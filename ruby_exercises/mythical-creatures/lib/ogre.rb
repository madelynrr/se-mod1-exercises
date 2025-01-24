class Ogre
    attr_reader :name,
                :home,
                :swings

    attr_accessor :encounter_counter

    def initialize(name, home = "Swamp", swings = 0, encounter_counter = 0)
        @name = name
        @home = home
        @swings = swings
        @encounter_counter = encounter_counter
    end

    def encounter(human)
        @encounter_counter += 1
        human.encounter_counter += 1
        swing_at(human) if human.notices_ogre? == true
        human.knocked_out = true if @swings == 2
    end

    def swing_at(human)
        @swings += 1
    end

    def apologize(human)
        human.knocked_out = false
    end
end

class Human
    attr_reader :name

    attr_accessor :encounter_counter,
                  :notices_ogre,
                  :knocked_out

    alias :knocked_out? :knocked_out

    def initialize(name = "Jane", encounter_counter = 0, knocked_out = false)
        @name = name
        @encounter_counter = encounter_counter
        @knocked_out = knocked_out
    end

    def notices_ogre?
        if encounter_counter % 3 == 0 && encounter_counter > 0
            true
        else
            false
        end
    end
end
