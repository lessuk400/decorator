class Flowers
  attr_reader
  @@flower_list = []
  def initialize flowers = ["Romashka", "Troyanda", "Tulpan", "Buzok", "Orhideya"]
  #massiv imen
    5.times do |i|
      @@flower_list << RealFlower.new(flowers[i], rand(20)+10)
      @@flower_list << ArtificialFlower.new(flowers[i], rand(20)+10)
    end
  end

  def self.flowerList
    @@flower_list.each { |i| puts i }
  end

  def self.detailedInfo flowerName
    flower = @@flower_list.find{|obj| obj.name == flowerName.to_s}
    puts flower
  end

  def self.getFlowerPrice name
    flowerPrice = @@flower_list.find{|obj| obj.name == name.to_s}.price
  end
end
