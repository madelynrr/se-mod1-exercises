class Catalog < Array
    def cheapest
        min_by {|product| product.price}&.name
    end
end
