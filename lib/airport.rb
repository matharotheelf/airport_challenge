require_relative "plane"

class Airport

  attr_reader :plane_list

  def initialize
    @plane_list = []
  end

  def land_plane(plane, weather)
    unless weather.stormy
      @plane_list.push(plane)
    end
  end

  def take_off_plane(weather)
    unless weather.stormy
      @plane_list.pop
    end
  end

end
