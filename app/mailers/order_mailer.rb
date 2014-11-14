class OrderMailer < ActionMailer::Base
  default from: "hortusforum-l@cornell.edu"

  def order_email(order)
    @url = 'https://www.poinsettia.herokuapp.com'
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

  def logs(order)
    @url = 'https://www.poinsettia.herokuapp.com'
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
    mail(to: 'sc777@cornell.edu', subject: 'Poinsettia order confirmation')
  end

end
