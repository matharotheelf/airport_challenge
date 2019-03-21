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
      allow(weather).to receive(:stormy) { false }
      @airport.land_plane(plane, weather)
      expect(@airport.plane_list).to eq([plane])
    end

    it "stops plane landing if stormy" do
      allow(weather).to receive(:stormy) { true }
      @airport.land_plane(plane, weather)
      expect(@airport.plane_list).to eq([])
    end
  end

  describe "#take_off_plane" do

    let(:weather2) { double :weather2 }

    before do
      allow(weather).to receive(:stormy) { false }
      @airport.land_plane(plane, weather)
    end

    it "takes plane out of plane_list when not stormy" do
      allow(weather2).to receive(:stormy) { false }
      @airport.take_off_plane(weather2)
      expect(@airport.plane_list).to eq([])
    end

    it "does not allow takeoff when stormy" do
      allow(weather2).to receive(:stormy) { true }
      @airport.take_off_plane(weather2)
      expect(@airport.plane_list).to eq([plane])
    end
  end
end
