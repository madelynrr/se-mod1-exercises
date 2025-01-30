class Dog
    attr_reader :hungry

    alias :hungry? :hungry

    def initialize
        @hungry = true
    end

    def eat
        @hungry = false
    end
end
