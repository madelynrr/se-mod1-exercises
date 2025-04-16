RSpec.describe Building do
    it "can a building number and name" do
        building = Building.new("123", "Palace Gardens")

        expect(building.building_number).to eq("123")
        expect(building.building_name).to eq("Palace Gardens")
    end

    it "can have up to four apartments" do
        building = Building.new("123", "Palace Gardens")
        apartment_1 = Apartment.new
        apartment_2 = Apartment.new
        apartment_3 = Apartment.new
        apartment_4 = Apartment.new
        apartment_5 = Apartment.new

        expect(building.list_apartments.count).to eq(0)

        building.add_apartment(apartment_1)
        building.add_apartment(apartment_2)
        building.add_apartment(apartment_3)
        building.add_apartment(apartment_4)
        building.add_apartment(apartment_5)

        expect(building.list_apartments.count).to eq(4)
        expect(building.list_apartments).to eq([apartment_1, apartment_2, apartment_3, apartment_4])
    end
end
