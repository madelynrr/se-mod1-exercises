class Pirate
    attr_reader :name,
                :job,
                :cursed,
                :heinous_acts,
                :booty

    alias :cursed? :cursed

    def initialize(name, job = "Scallywag", cursed = false, heinous_acts = 0, booty = 0)
        @name = name
        @job = job
        @cursed = cursed
        @heinous_acts = heinous_acts
        @booty = booty
    end

    def commit_heinous_act
        @heinous_acts += 1
        @cursed = true if @heinous_acts >= 3
    end

    def rob_ship
        @booty += 100
    end
end
