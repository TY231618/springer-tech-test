class Canvas

  attr_reader :inside_area

  def initialize(height, width)
    @inside_area = Array.new(height) { Array.new(width) }
  end
end
