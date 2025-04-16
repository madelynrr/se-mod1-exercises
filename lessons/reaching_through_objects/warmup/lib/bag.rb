require "pry"

class Bag
    attr_reader :candies

    def initialize
        @candies = []
    end

    def empty?
        @candies.empty?
    end

    def add_candy(candy)
        @candies << candy
    end

    def <<(candy)
        add_candy(candy)
    end

    def count
        @candies.count
    end

    def contains?(type)
        candy_types = @candies.map do |candy|
            candy.type
        end
        candy_types.include?(type)
    end
end
