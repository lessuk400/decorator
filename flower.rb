class Flower
  attr_reader :price, :name, :type
  def initialize name, price, type
    @name = name
    @price = price
    @type = type
  end

  def to_s
    "#{@name} --- #{@price} --- #{@type}"
  end
end

class RealFlower < Flower
  attr_reader :freshness, :price
  def initialize(name, price)
    super(name, price, 'real')
    @freshness = Time.new() - 60*60*rand(100) #v maubutnomy - metod dlya vubory naysvijishuh
  end
  def to_s
    "#{@name} --- #{@price} --- #{@type} --- #{@freshness.strftime("%A")}"
  end
end

class ArtificialFlower < Flower
  attr_reader :price
  def initialize(name, price)
    super(name, price, 'artificial')
  end
end
