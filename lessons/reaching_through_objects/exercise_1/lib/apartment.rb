require "pry"

class Apartment
    attr_reader :rented,
                :rooms

    def initialize
        @rented = false
        @rooms = []
    end

    def is_rented?
        rented
    end

    def rent
        @rented = true
    end

    def add_room(room)
        @rooms << room unless @rooms.count == 4
    end

    def list_rooms_by_name_alphabetically
       names =  @rooms.map { |room| room.name }
       names.sort
    end
end
