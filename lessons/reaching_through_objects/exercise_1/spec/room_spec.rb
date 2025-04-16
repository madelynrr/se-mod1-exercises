RSpec.describe Room do
    it "has a name" do
        bathroom = Room.new("bathroom")

        expect(bathroom.name).to eq("bathroom")
    end
end
