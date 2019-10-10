class CashRegister

  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
   
  end

  def add_item(name, price, qty = 1)
    item = {}
    item[:name] = name
    item[:price] = price
    item[:qty] = qty
  
    @cart << item
    @total += price * qty
  end
  
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    "After the discount, the total comes to $#{@total}."
  end
  
 # def items
 #   @items
 # end

  def void_last_transaction
  item_names = []
    @cart.each do | item |
      #test expects product name * quantity...
      for qty in 1..item[:qty] 
        item_names << item[:name]
      end 
    end 
    item
  end

end

