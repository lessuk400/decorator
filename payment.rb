class Cash
  def pay price
    puts "You have chosen cash. No extra fees"
    puts "Your total price is #{price}"
  end
end

class PayPal
  def pay price
    puts "You have chosen PayPal. 0.5% extra fees"
    puts "Enter your card code..."
    puts "Your total price is #{price*0.05 + price}"
  end
end
