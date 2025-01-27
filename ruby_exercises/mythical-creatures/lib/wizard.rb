class Wizard
    attr_reader :name,
                :bearded,
                :rested,
                :spell_count

    alias :bearded? :bearded
    alias :rested? :rested

    def initialize(name, bearded = true, rested = true, spell_count = 0)
        @name = name
        @bearded = bearded
        @rested = rested
        @spell_count = spell_count
    end

    def incantation(spell)
        "abraca #{spell}"
    end

    def cast
        @spell_count += 1
        @rested = false if @spell_count >= 3
        "MAGIC MISSILE!"
    end
end
