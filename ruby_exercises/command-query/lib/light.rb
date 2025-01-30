class Light
    attr_reader :on

    alias :on? :on

    def initialize
        @on = false
    end

    def turn_on
        @on = true
    end
end
