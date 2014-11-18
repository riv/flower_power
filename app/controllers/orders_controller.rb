class OrdersController < ApplicationController

  def create
    @success = false

    newOrder = Order.new
    newOrder.customer_email = params['email']
    newOrder.name = params['name']
    newOrder.phone_number = params['phone_number']
    newOrder.delivery = params['delivery']
    newOrder.address = params['address']
    newOrder.count = params['count']
    newOrder.total = (params['total'].to_f > 0) ? (params['total'].to_f) : (nil)
    newOrder.has_payed = false
    p newOrder.total
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
      OrderMailer.logs(newOrder).deliver
    end

    respond_to do |format|
      format.json { render json: { success: @success, errors: @orderErrors} }
    end
  end

  def questions
    #p '/////////////////////////////'
    #p params
    #p '/////////////////////////////'
    @success = false
    if params[:message] != '' && params[:subject] != '' && params[:email] != ''
      p 'should go to mailer'
      @success = true
      OrderMailer.questions(params).deliver
    end
    p 'success is ' + @success.to_s

    flash[:messageSuccess] = "Thank you for your message! We will reply to you as soon as possible"
    respond_to do |format|
      format.json { render json: {success: @success}}
    end
  end
    
end


