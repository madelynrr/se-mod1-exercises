class Building
    attr_reader :building_number,
                :building_name

    def initialize(building_number, building_name)
        @building_number = building_number
        @building_name = building_name
        @apartments = []
    end

    def list_apartments
        @apartments
    end

    def add_apartment(apartment)
        @apartments << apartment unless @apartments.count == 4
    end

    def number_units_available
        @apartments.count do |apartment|
            apartment.is_rented? == false
        end
    end

    def apartments_with_unit_available
        @apartments.find_all { |apartment| apartment.is_rented? == false }
    end
end
