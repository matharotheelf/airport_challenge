require "airport"

describe Airport do

  let(:plane) { double :plane }
  let(:weather) { double :weather }

  before do
    @airport = Airport.new
  end

  describe "#plane_list" do

    it "starts off empty" do
      expect(@airport.plane_list).to eq([])
    end
  end

  describe "#land_plane" do

    it "adds plane to plane_list when not stormy" do
      allow(weather).to receive(:stormy) { true }
      @airport.land_plane(plane, weather)
      expect(@airport.plane_list).to eq([plane])
    end
  end

  describe "#take_off_plane" do

    it "takes plane out of plane_list when not stormy" do
      allow(weather).to receive(:stormy) { true }
      @airport.land_plane(plane, weather)
      @airport.take_off_plane(weather)
      expect(@airport.plane_list).to eq([])
    end

  end
end
