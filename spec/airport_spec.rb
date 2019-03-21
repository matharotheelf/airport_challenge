require "airport"

describe Airport do

  before do
    @airport = Airport.new
  end

  describe "#plane_list" do

    it "starts off empty" do
      expect(@airport.plane_list).to eq([])
    end
  end
end
