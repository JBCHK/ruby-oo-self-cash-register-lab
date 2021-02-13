
class CashRegister

    attr_accessor :total, :discount, :purchases, :cart 

    def initialize(discount = nil)
     @total = 0 
     @discount = discount
     @purchases = []
     @cart = []
    end


    def total
      @total 
    end

    def add_item(title, price, quantity = 1)
       self.total = @total += price.to_f * quantity
       self.purchases = @purchases << (price.to_f * quantity)
       self.cart = @cart.concat([title] * quantity) 
    end

    def apply_discount
      if self.discount == 20
         new_price = self.total - self.total * discount * 0.01
         self.total = new_price.to_int
        return "After the discount, the total comes to $#{new_price.to_int}."
      else
        return "There is no discount to apply."
    end
end

    def items
      self.cart
    end


   def void_last_transaction
    deleted = self.purchases.pop
    self.total = self.total - deleted
   end


end

cash_register = CashRegister.new
cash_register_with_discount = CashRegister.new(20)