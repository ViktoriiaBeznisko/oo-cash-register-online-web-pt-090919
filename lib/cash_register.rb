class CashRegister

  attr_accessor :total, :discount, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    #@all_items = []
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
  

  def items
    all_items = []
    @cart.each do | item |
      for qty in 1..item[:qty] 
        all_items << item[:name]
     end 
    end 
    all_items
  end

  def void_last_transaction
   # last_transaction = @all_items.length-1
    @total = @total - all_items.pop
   #items.pop
  end

end

