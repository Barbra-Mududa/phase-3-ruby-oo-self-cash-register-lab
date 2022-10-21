class CashRegister
    attr_accessor  :discount, :total, :items, :prev_total

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.prev_total = quantity * price
        self.total +=  self.prev_total
        quantity.times do 
        self.items << title
        end 
    end


    def apply_discount
        if(@discount > 0)
            @total = @total*(100 - @discount)/100
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end


    def void_last_transaction
        self.total -= self.prev_total
    end

end
