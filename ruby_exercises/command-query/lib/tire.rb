class Tire
    attr_reader :flat

    alias :flat? :flat

    def initialize
        @flat = false
    end

    def blow_out
        @flat = true
    end
end
