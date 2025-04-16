RSpec.describe Apartment do
    it "initializes with a state of rented is false" do
        apartment = Apartment.new

        expect(apartment.rented).to eq(false)
    end

    it "states whether or not it is rented" do
        apartment = Apartment.new

        expect(apartment.is_rented?).to eq(false)
    end

    it "can be rented" do
        apartment = Apartment.new

        expect(apartment.is_rented?).to eq(false)

        apartment.rented

        expect(apartment.is_rented?).to eq(true)
    end

    it "can add a room" do
        apartment = Apartment.new
        bathroom = Room.new("bathroom")

        apartment.add_room(bathroom)

        expect(apartment.rooms.first).to eq(bathroom)
    end

    it "can have four rooms at most" do
        apartment = Apartment.new

        bathroom = Room.new("bathroom")
        kitchen = Room.new("kitchen")
        bedroom = Room.new("bedroom")
        den = Room.new("den")
        laundry = Room.new("laundry")

        apartment.add_room(bathroom)
        apartment.add_room(kitchen)
        apartment.add_room(bedroom)
        apartment.add_room(den)
        apartment.add_room(laundry)

        expect(apartment.rooms.count).to eq(4)
    end

    it "can list rooms alphabetically" do
        apartment = Apartment.new

        bathroom = Room.new("bathroom")
        kitchen = Room.new("kitchen")
        bedroom = Room.new("bedroom")
        den = Room.new("den")

        apartment.add_room(bathroom)
        apartment.add_room(kitchen)
        apartment.add_room(bedroom)
        apartment.add_room(den)

        expect(apartment.list_rooms_by_name_alphabetically).to eq([bathroom.name, bedroom.name, den.name, kitchen.name])
    end
end
