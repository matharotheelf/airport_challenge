class Weather

  attr_reader :stormy

  def initialize
    @stormy = [true, false].sample
  end

end
