class OrdersController < ApplicationController

  def create
    @success = false

    newOrder = Order.new
    newOrder.customer_email = params['email']
    newOrder.name = params['name']
    newOrder.phone_number = params['phone_number']
    newOrder.delivery = params['delivery']
    newOrder.delivery = params['address']
    newOrder.count = params['count']
    newOrder.total = (params['total'].to_i > 0) ? (params['total']) : (nil)
    newOrder.has_payed = false
    p newOrder
    newOrder.save
    @orderErrors = newOrder.errors.full_messages
    p @orderErrors
    
    order = JSON.parse(params[:order])
    if @orderErrors == [] 
      order.each do |i|
        #updating count of flowers in database
        updatedFlower = i['cartItem']['flower']
        dbFlower = Flowers.find_by_id(updatedFlower['id'])
        dbFlower.sixcount = updatedFlower['sixcount']
        dbFlower.eightcount = updatedFlower['eightcount']
        dbFlower.save
        #creating new order_items

        flowerid = i['cartItem']['flower']['id'] 
        p flowerid
        sixcount = i['cartItem']['sixcount']
        eightcount = i['cartItem']['eightcount']
        item = newOrder.order_items.new
        item.flower_id = flowerid
        item.sixquantity = sixcount
        item.eightquantity = eightcount
        item.save
      end
      @success = true
      flash[:orderSuccess] = "Thank you for your order! You will receive a confirmation email at " + newOrder.customer_email + " shortly!"
      OrderMailer.order_email(newOrder).deliver
    end

    respond_to do |format|
      format.json { render json: { success: @success, errors: @orderErrors} }
    end
  end
    
end

# {
#   "order"=> "[{
#     "cartItem":{
#       "flower":{
#         "id":3,
#         "name":"Christmas Beauty Nostalgia",
#         "created_at":"2014-11-12T21:34:48.595Z",
#         "updated_at":"2014-11-12T21:34:48.595Z",
#         "sixcount":18,
#         "eightcount":2,
#         "imagelink":"ChristmasBeautyNostalgia.jpg"
#       }, 
#       "sixcount":0, 
#       "eightcount":1
#     }
#   }]", 
#     "name"=>"",
#     "phone_number"=>"", 
#     "email"=>"", 
#     "delivery"=>"false", 
#     "total"=>"18", 
#     "controller"=>"orders", 
#     "action"=>"create"
# }





