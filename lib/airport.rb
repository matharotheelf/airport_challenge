require_relative "plane"

class Airport

  attr_reader :plane_list

  def initialize
    @plane_list = []
  end

end
