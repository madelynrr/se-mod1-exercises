class Hobbit
    attr_reader :name,
                :disposition,
                :age,
                :is_short

    alias :is_short? is_short

    def initialize(name, disposition = "homebody", age = 0, is_short = true)
        @name = name
        @disposition = disposition
        @age = age
        @is_short = is_short
    end

    def celebrate_birthday
        @age += 1
    end

    def adult?
        @age >= 33 ? true : false
    end

    def old?
        @age >= 101 ? true : false
    end

    def has_ring?
        @name == "Frodo" ? true : false
    end
end
