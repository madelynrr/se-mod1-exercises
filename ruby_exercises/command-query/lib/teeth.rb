class Teeth
    attr_reader :clean

    alias :clean? :clean

    def initialize
        @clean = false
    end

    def brush
        @clean = true
    end
end
