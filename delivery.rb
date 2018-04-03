class NovaPoshta
  def deliveryPrice price
    if price > 300
      0
    else
      35
    end
  end
end


class UkrPoshta
  def deliveryPrice price
    15
  end
end
