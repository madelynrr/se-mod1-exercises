class Wallet < Array
    attr_reader :cents

    COINS = {
             penny: 1,
             nickel: 5,
             dime: 10,
             quarter: 25
            }

    def initialize
        @cents = 0
    end

    def <<(coin)
        self.push(coin)
        @cents += COINS[coin]
    end

    def take(*removed_coins)
        removed_coins.each do |coin|
            if include?(coin)
                delete_at(index(coin))
                @cents -= COINS[coin]
            end
        end
    end

    # def cents
    #     reduce(0) do |sum, coin|
    #         sum += COINS[coin]
    #     end
    # end
end
