class RollCall < Array
    def longest_name
        max_by {|name| name.length}
    end
end
