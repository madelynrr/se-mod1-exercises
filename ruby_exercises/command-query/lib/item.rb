class Item
    attr_reader :name,
                :price,
                :discount

    def initialize(name, cost_hash)
        @name = name
        @price = cost_hash[:price]
        @discount = cost_hash[:discount]
    end
end
