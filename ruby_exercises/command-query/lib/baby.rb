class Baby
    attr_reader :tired

    alias :tired? :tired

    def initialize(tired = true)
        @tired = tired
    end

    def nap
        @tired = false
    end
end
