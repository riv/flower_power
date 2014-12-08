class AdminsController < ApplicationController
  

  def show
    @fullorders = []
    @flowers = Flowers.all
    Order.all.each do |i|
      a = {order: i,
           items: i.order_items}
      @fullorders.push(a)
      p @fullorders
    end
  end


end


#@fullorders structure

#we want
#order_id
#email
#phone_nubmer
#has_payed
#name
#delivery
#address
#total

#for each flower they get
#name
#sixcount
#eightcount


#
# [ 
#   {
#     order: {
#         id: ,
#         customer_email: ,
#         phone_number: ,
#         pick_up_date: ,
#         created_at: ,
#         updated_at: ,
#         has_payed: ,
#         name: ,
#         delivery: ,
#         address: ,
#         count: ,
#         total: ,
#         cancelled: 
#       },
#     items: [
#        {
  #       id: ,
  #       flower_id: ,
  #       created_at: ,
  #       updated_at: ,
  #       order_id: ,
  #       six_quantity: ,
  #       eight_quantity: ,
#       }
#     ]
#   }
# ]