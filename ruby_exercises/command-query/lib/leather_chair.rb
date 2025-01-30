class LeatherChair
    attr_reader :faded

    alias :faded? :faded

    def initialize
        @faded = false
    end

    def expose_to_sunlight
        @faded = true
    end
end
