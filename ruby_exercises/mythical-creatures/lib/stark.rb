class Stark
    attr_reader :name,
                :location,
                :house_words

    attr_accessor :safe

    alias_method :safe?, :safe

    def initialize(name,
                   location = "Winterfell",
                   safe = false,
                   house_words = "Winter is Coming"
                   )
        @name = name
        @location = location
        @safe = safe
        @house_words = house_words
    end
end
