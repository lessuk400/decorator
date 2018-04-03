class FlowerShop
  attr_reader :order
  def showProducts
    Flowers.flowerList
  end

  def detailedInfo flowerName
    Flowers.detailedInfo flowerName
  end

  def payOrder order
    p order.orderPrice
    order.payment.pay(order.orderPrice)
  end
end
