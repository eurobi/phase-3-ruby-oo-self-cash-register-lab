class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = 0
    end

    def add_item(title, price, quantity=1)
        self.total += (price * quantity)
        self.last_item = price * quantity
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount > 0
            self.total -= (self.total * self.discount * 0.01)
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item
    end
end
