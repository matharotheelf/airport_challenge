require "weather"

describe Weather do

  describe "#stormy" do

    it "is either stormy or not" do

      weather = Weather.new
      expect(weather.stormy).to eq(true).or(eq(false))

    end

  end

end
