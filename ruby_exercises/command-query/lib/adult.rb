class Adult
    attr_reader :drinks

    def initialize(drinks = 0)
        @drinks = drinks
    end

    def consume_an_alcoholic_beverage
        @drinks += 1
    end

    def sober?
        @drinks >= 3 ? false : true
    end
end
