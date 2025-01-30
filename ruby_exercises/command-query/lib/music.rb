class Music
    attr_reader :loud

    alias :loud? :loud

    def initialize
        @loud = false
    end

    def turn_up
        @loud = true
    end
end
