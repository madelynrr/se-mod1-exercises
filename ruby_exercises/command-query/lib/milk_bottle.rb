class MilkBottle
    attr_reader :full

    alias :full? :full

    def initialize
        @full = true
    end

    def spill
        @full = false
    end
end
