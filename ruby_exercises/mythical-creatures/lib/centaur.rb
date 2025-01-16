class Centaur
    attr_reader :name,
                :breed,
                :standing,
                :actions,
                :sick

    alias :standing? :standing
    alias :sick? :sick

    def initialize(name, breed, standing = true, actions = 0, sick = false)
        @name = name
        @breed = breed
        @standing = standing
        @actions = actions
        @sick = sick
    end

    def shoot
        if cranky? || laying?
            "NO!"
        else
            @actions += 1
            "Twang!!!"
        end
    end

    def run
        if laying?
            "NO!"
        else
            @actions += 1
            "Clop clop clop clop!"
        end
    end

    def cranky?
        @actions >= 3
    end

    def rested?
        !cranky?
    end

    def stand_up
        @standing = true
    end

    def lay_down
        @standing = false
    end

    def laying?
        @standing == false
    end

    def sleep
        @standing ? "NO!" : @actions = 0
    end

    def drink_potion
        if !standing
            "NO!"
        elsif rested?
            @sick = true
        else
            @actions = 0
        end
    end
end
