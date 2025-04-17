class Street
    attr_reader :name,
                :owned_buildings

    def initialize(name)
        @name = name
        @owned_buildings = []
    end

    def add_building(building)
        @owned_buildings << building
    end

    def buildings
        names = @owned_buildings.map { |building| building.building_name }
        names.sort
    end

    def number_of_available_apartments
        @owned_buildings.sum do |building|
            building.number_units_available
        end
    end

    def available_unit_buildings_on_street
        @owned_buildings.where()
    end

    def list_available_apartments
        available_apartments_info = {}

        @owned_buildings.each do |building|
            building.apartments_with_unit_available.each do |apartment|
                available_apartments_info[building.building_name] = apartment.list_rooms_by_name_alphabetically
            end
        end

        available_apartments_info
    end
end
