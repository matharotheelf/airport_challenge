require "plane"

describe Plane do

  before do
    @plane = Plane.new
  end

  describe "#landed?" do
    it "starts off not landed" do
      expect(@plane.landed).to eq(false)
    end
  end

  describe "#land" do
    it "lands plane" do
      @plane.land
      expect(@plane.landed).to eq(true)
    end
  end

  describe "#takeoff" do
    it "makes plane take off" do
      @plane.land
      @plane.takeoff
      expect(@plane.landed).to eq(false)
    end
  end

end
