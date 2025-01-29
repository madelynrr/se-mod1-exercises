class Clearance < Array
    def best_deal
        max_by {|item| item.discount.to_f / item.price}&.name
    end
end
