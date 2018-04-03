class Order
  def initialize customerId, order_hash
    @customerId = customerId
    @order_hash = order_hash
    @price = calculateFLowersPrice
  end

  def setDelivery deliveryMethod
    @delivery = deliveryMethod
  end

  def setPayment paymentMethod
    @payment = paymentMethod
  end

  def calculateFLowersPrice
    price = 0
    @order_hash.each do |key, value|
      price += Flowers.getFlowerPrice(key.to_sym) * value.to_i
    end
    price
  end

  def orderPrice
    @price
  end

attr_reader :price, :delivery, :payment
end
