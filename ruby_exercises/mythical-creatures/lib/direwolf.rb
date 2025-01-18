class Direwolf
    attr_reader :name,
                :home,
                :size,
                :starks_to_protect

    attr_accessor :hunts_white_walkers

    alias :hunts_white_walkers? :hunts_white_walkers

    def initialize(
                   name,
                   home = "Beyond the Wall",
                   size = "Massive",
                   starks_to_protect = [],
                   hunts_white_walkers = true
                   )
        @name = name
        @home = home
        @size = size
        @starks_to_protect = starks_to_protect
        @hunts_white_walkers = hunts_white_walkers
    end

    def protects(stark)
        if self.home == stark.location && @starks_to_protect.length < 2
            @starks_to_protect.push(stark)
            @hunts_white_walkers = false
            stark.safe = true
        end
    end

    def leaves(stark)
        @starks_to_protect = []
        @hunts_white_walkers = true
        stark.safe = false

        stark
    end
end
