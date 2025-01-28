class Children < Array
    def eldest
        max_by {|child| child.age}
    end
end
