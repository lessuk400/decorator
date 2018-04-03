class OrderDecorator < SimpleDelegator
  def initialize order
    @order = order
    super
  end
end

class PackedOrder < OrderDecorator
  def initialize order
    super
    puts "You have chosen Package"
  end
  def orderPrice
    if price < 500
      @price = super + 10
    else
      @price = super
    end
  end
end

class OrderInBasket < OrderDecorator
  def initialize order
    super
    puts "You have chosen Basket"
  end
  def orderPrice
    @price = super + super*0.05
  end
end

class OrderWithPostCard < OrderDecorator
  def initialize order
    super
    puts "You have chosen Post Card"
  end
  def orderPrice
    @price = super + 15
  end
end
