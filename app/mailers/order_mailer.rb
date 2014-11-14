class OrderMailer < ActionMailer::Base
  default from: "Cornell Hortus Forum"

  def order_email(order)
    @url = '/'
    @order = order
    items = order.order_items
    @order_items = []
    items.each do |i|
      flowername = Flowers.find_by_id(i[:flower_id]).name
      @order_items.push({
        name: flowername,
        sixcount: i[:sixquantity],
        eightcount: i[:eightquantity]
        })
    end
    p @order_items
    mail(to: @order.customer_email, subject: 'Poinsettia order confirmation')
  end
end
