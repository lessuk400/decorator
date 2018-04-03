class Customer
  attr_reader :name, :address, :customer_id

  @@customer_id_counter = 0

  def initialize name, address
    @name = name
    @address = address
    @customer_id = @@customer_id_counter
    @@customer_id_counter += 1
  end

end
