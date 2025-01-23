class Dragon
    attr_reader :name,
                :color,
                :rider,
                :hungry
    alias :hungry? :hungry

    def initialize(name, color, rider, hungry = true, eaten = 0)
        @name = name
        @color = color
        @rider = rider
        @hungry = hungry
        @eaten = eaten
    end

    def eat
        @eaten += 1
        @hungry = false if @eaten == 3
    end
end
