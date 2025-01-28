class Beers
    attr_reader :inventory

    FULLY_STOCKED = 99

    def initialize
        @inventory = FULLY_STOCKED
    end

    def take_one_down_and_pass_it_around
        @inventory -= 1
    end

    def restock
        @inventory = FULLY_STOCKED
    end
end
