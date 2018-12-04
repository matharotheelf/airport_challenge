require "airport"

describe Airport do
    context "creates airport, plane and lands it" do
      airport = Airport.new
      plane = Plane.new
      airport.land(plane)

    describe '#land' do
      it "lands a plane" do
        expect(airport.planes).to eq([plane])
      end
    end

    describe '#take_off' do
      it "allows plane to take off" do
        airport.take_off
        expect(airport.planes).to eq([])
      end
    end
  end
end
