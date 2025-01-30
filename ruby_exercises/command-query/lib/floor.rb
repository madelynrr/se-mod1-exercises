class Floor
    attr_reader :dirty

    alias :dirty? :dirty

    def initialize
        @dirty = true
    end

    def wash
        @dirty = false
    end
end
