require "airport"

describe Airport do

  let(:plane) { double :plane }

  before do
    @airport = Airport.new
  end

  describe "#plane_list" do

    it "starts off empty" do
      expect(@airport.plane_list).to eq([])
    end
  end

  describe "#land_plane" do

    it "adds plane to plane_list" do
      @airport.land_plane(plane)
      expect(@airport.plane_list).to eq([plane])
    end
  end

  describe "#take_off_plane" do

    it "takes plane out of plane_list" do
      @airport.land_plane(plane)
      @airport.take_off_plane
      expect(@airport.plane_list).to eq([])
    end

    

  end
end
