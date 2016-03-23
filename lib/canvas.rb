class Canvas

  attr_reader :inside_area

  def initialize(height, width)
    @inside_area = Array.new(height) { Array.new(width) }
  end

  def border_sides
    inside_area.push('|')
    inside_area.unshift('|')
  end
end
