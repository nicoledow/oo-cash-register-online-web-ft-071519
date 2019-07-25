=begin
We're going to create an Object Oriented Cash Register that can:

Add items of varying quantities and prices
Calculate discounts
Keep track of what's been added to it
Void the last transaction
=end

class CashRegister
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @last_total = total
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
  end
  
  def apply_discount
    @total -= (total * discount / 100)
    if discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = @last_total
  end
  
  
end