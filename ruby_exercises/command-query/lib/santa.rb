class Santa
    attr_reader :cookies_eaten

    def initialize
        @cookies_eaten = 0
    end

    def fits?
        @cookies_eaten >= 3 ? false : true
    end

    def eats_cookies
        @cookies_eaten += 1
    end
end
