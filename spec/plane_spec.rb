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
    it "starts off not landed" do
      @plane.land
      expect(@plane.landed).to eq(true)
    end
  end

end
