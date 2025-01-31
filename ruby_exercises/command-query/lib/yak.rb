class Yak
    attr_reader :hairy

    alias :hairy? :hairy

    def initialize
        @hairy = true
    end

    def shave
        @hairy = false
    end
end
