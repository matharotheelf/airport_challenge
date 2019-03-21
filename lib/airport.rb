require_relative "plane"

class Airport

  attr_reader :plane_list

  def initialize
    @plane_list = []
  end

  def land_plane(plane)
    @plane_list.push(plane)
  end

  def take_off_plane
    @plane_list.pop
  end

end
