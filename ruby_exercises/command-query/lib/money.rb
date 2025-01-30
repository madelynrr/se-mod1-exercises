class Money
    attr_reader :amount

    def initialize
        @amount = 0
    end

    def earn(income)
        @amount += income
    end
end
