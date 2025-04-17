require "./lib/street"
require "./lib/building"
require "./lib/apartment"
require "./lib/room"

RSpec.describe Street do
    it "can have a name" do
        street = Street.new("Adlington Road")

        expect(street.name).to eq("Adlington Road")
    end

    it "can add a building" do
        street = Street.new("Adlington Road")
        building = Building.new("123", "Palace Gardens")

        street.add_building(building)

        expect(street.owned_buildings).to eq([building])
    end

    it "can list building alphabetically" do
        street = Street.new("Adlington Road")
        palace = Building.new("123", "Palace Gardens")
        zebra = Building.new("123", "Zebra Gardens")

        street.add_building(zebra)
        street.add_building(palace)

        expect(street.buildings).to eq([palace.building_name, zebra.building_name])
    end

    it "can give number of available apartments" do
        street = Street.new("Adlington Road")
        palace = Building.new("123", "Palace Gardens")
        zebra = Building.new("123", "Zebra Gardens")
        apartment_1 = Apartment.new
        apartment_2 = Apartment.new
        apartment_3 = Apartment.new
        apartment_4 = Apartment.new

        apartment_1.rent
        apartment_3.rent

        street.add_building(palace)
        street.add_building(zebra)

        palace.add_apartment(apartment_1)
        palace.add_apartment(apartment_2)
        zebra.add_apartment(apartment_3)
        zebra.add_apartment(apartment_4)

        expect(street.number_of_available_apartments).to eq(2)
    end

    it "can list available apartments with their rooms" do
        street = Street.new("Adlington Road")
        palace = Building.new("123", "Palace Gardens")
        zebra = Building.new("123", "Zebra Gardens")
        apartment_1 = Apartment.new
        apartment_2 = Apartment.new
        apartment_3 = Apartment.new
        apartment_4 = Apartment.new
        bathroom = Room.new("bathroom")
        kitchen = Room.new("kitchen")
        bedroom = Room.new("bedroom")
        den = Room.new("den")
        laundry = Room.new("laundry")

        apartment_1.add_room(bathroom)
        apartment_1.add_room(kitchen)
        apartment_2.add_room(bedroom)
        apartment_3.add_room(den)
        apartment_4.add_room(laundry)

        apartment_1.rent
        apartment_3.rent

        street.add_building(palace)
        street.add_building(zebra)

        palace.add_apartment(apartment_1)
        palace.add_apartment(apartment_2)
        zebra.add_apartment(apartment_3)
        zebra.add_apartment(apartment_4)

        apartments_information = {
            palace.building_name => apartment_2.list_rooms_by_name_alphabetically,
            zebra.building_name => apartment_4.list_rooms_by_name_alphabetically
        }

        expect(street.list_available_apartments).to eq(apartments_information)
    end

    xit "can write a newspaper ad for the available apartments" do
        street = Street.new("Adlington Road")
        palace = Building.new("123", "Palace Gardens")
        zebra = Building.new("123", "Zebra Gardens")
        apartment_1 = Apartment.new
        apartment_2 = Apartment.new
        apartment_3 = Apartment.new
        apartment_4 = Apartment.new
        bathroom = Room.new("bathroom")
        kitchen = Room.new("kitchen")
        bedroom = Room.new("bedroom")
        den = Room.new("den")
        laundry = Room.new("laundry")
        laundry_2 = Room.new("laundry")

        apartment_1.add_room(bathroom)
        apartment_1.add_room(kitchen)
        apartment_2.add_room(bedroom)
        apartment_2.add_room(laundry_2)
        apartment_3.add_room(den)
        apartment_4.add_room(laundry)

        apartment_1.rent

        street.add_building(palace)
        street.add_building(zebra)

        palace.add_apartment(apartment_1)
        palace.add_apartment(apartment_2)
        zebra.add_apartment(apartment_3)
        zebra.add_apartment(apartment_4)

        add = "Palace Gardens has 1 available apartment!
        This apartment has 2 rooms including bedroom and laundry.

       Zebra Gardens has 2 available apartments!
        Apartment 1 has den.
        Apartment 2 has laundry."

        expect(street.newspaper_add).to eq(add)
    end
end
