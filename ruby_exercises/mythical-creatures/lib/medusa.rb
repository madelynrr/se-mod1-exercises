class Medusa
    attr_reader :name,
                :statues

    def initialize(name, statues = [])
        @name = name
        @statues = statues
    end

    def stare(victim)
        @statues.push(victim)

        @statues.shift if @statues.count > 3

        victim.stoned = true
    end
end

class Person
    attr_accessor :name,
                :stoned
    alias :stoned? :stoned

    def initialize(name, stoned = false)
        @name = name
        @stoned = stoned
    end
end
