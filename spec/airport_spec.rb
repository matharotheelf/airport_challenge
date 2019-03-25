require "airport"

describe Airport do

  let(:plane) { double :plane }
  let(:plane2) { double :plane2 }
  let(:weather) { double :weather }

  before do
    @airport = Airport.new(1)
    @airport2 = Airport.new(2)
  end

  describe "#plane_list" do

    it "starts off empty" do
      expect(@airport.plane_list).to eq([])
    end
  end

  describe "#land_plane" do

    it "adds plane to plane_list when not stormy" do
      allow(weather).to receive(:stormy) { false }
      allow(plane).to receive(:landed) { false }
      @airport.land_plane(plane, weather)
      expect(@airport.plane_list).to eq([plane])
    end

    it "stops plane landing if stormy" do
      allow(weather).to receive(:stormy) { true }
      allow(plane).to receive(:landed) { false }
      @airport.land_plane(plane, weather)
      expect(@airport.plane_list).to eq([])
    end

    it "stops plane landing if airport full" do
      allow(weather).to receive(:stormy) { false }
      allow(plane).to receive(:landed) { false }
      @airport.land_plane(plane, weather)
      @airport.land_plane(plane2, weather)
      expect(@airport.plane_list).to eq([plane])
    end

    it "airport has variable capacity and can take to planes" do
      allow(weather).to receive(:stormy) { false }
      allow(plane).to receive(:landed) { false }
      allow(plane2).to receive(:landed) { false }
      @airport2.land_plane(plane, weather)
      @airport2.land_plane(plane2, weather)
      expect(@airport2.plane_list).to eq([plane, plane2])
    end
  end

  describe "#take_off_plane" do

    let(:weather2) { double :weather2 }

    before do
      allow(weather).to receive(:stormy) { false }
      allow(plane).to receive(:landed) { false }
      @airport.land_plane(plane, weather)
    end

    it "does not allow take off from empty airport" do
      allow(weather2).to receive(:stormy) { false }
      @airport.take_off_plane(weather2)
      @airport.take_off_plane(weather2)
      expect(@airport.plane_list).to eq([])
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
