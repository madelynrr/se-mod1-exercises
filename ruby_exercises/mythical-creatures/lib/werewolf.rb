class Werewolf
    attr_reader :name,
                :location,
                :human,
                :hungry

    alias :human? :human
    alias :hungry? :hungry

    def initialize(name, location = "London", human = true, hungry = false)
        @name = name
        @location = location
        @human = human
        @hungry = hungry
    end

    def wolf?
        !@human
    end

    def change!
        @human = !@human
        @hungry = true if @human == false
    end

    def consume(victim)
        if @human == false
            victim.status = :dead
            @hungry = false
        end
    end
end
