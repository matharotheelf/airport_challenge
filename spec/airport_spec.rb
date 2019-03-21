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

  describe "#land_plane" do
    let(:plane) { double :plane }

    it "adds plane to plane_list" do
      @airport.land_plane(plane)
      expect(@airport.plane_list).to eq([plane])
    end
  end
end
