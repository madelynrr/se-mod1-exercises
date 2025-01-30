class Door
    attr_reader :locked

    alias :locked? :locked

    def initialize
        @locked = true
    end

    def unlock
        @locked = false
    end
end
