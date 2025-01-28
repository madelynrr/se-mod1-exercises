class Apple
    attr_reader :weeks_passed

    def initialize
        @weeks_passed = 0
    end

    def wait_a_week
        @weeks_passed += 1
    end

    def ripe?
        @weeks_passed >= 3 ? true : false
    end
end
