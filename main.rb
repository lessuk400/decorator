require './customer.rb'
require './flowershop.rb'
require './flowers.rb'
require './flower.rb'
require './order.rb'
require './delivery.rb'
require './payment.rb'
require './services.rb'

customer = Customer.new("Alex", "Test street")
newShop = FlowerShop.new
Flowers.new
newShop.showProducts
order = Order.new(customer.customer_id, Romashka: 20, Buzok: 15)
order.setDelivery(UkrPoshta.new)
order.setPayment(PayPal.new)
decoratedOrder = PackedOrder.new(order)
decoratedOrder = OrderInBasket.new(decoratedOrder)
decoratedOrder = OrderWithPostCard.new(decoratedOrder)
newShop.payOrder(decoratedOrder)
