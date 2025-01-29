class Cupcakes < Array
    def sweetest
        max_by {|cupcake| cupcake.grams_of_sugar}
    end
end
