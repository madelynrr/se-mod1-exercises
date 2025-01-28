class Appointments
    attr_reader :slots

    def initialize
        @slots = []
    end

    def earliest
        @slots.sort.first
    end

    def at(time)
        @slots.push(time)
    end
end
