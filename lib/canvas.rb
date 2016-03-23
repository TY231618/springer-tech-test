class Canvas

  attr_reader :inside_area, :width

  def initialize(height, width)
    @inside_area = Array.new(height) { Array.new(width, " ") }
    @width = width
  end

  def border_sides
    inside_area.push('|')
    inside_area.unshift('|')
  end

  def border_top_and_bottom
    inside_area.unshift(Array.new(width + 2, '-'))
    inside_area.push(Array.new(width + 2, '-'))
  end
end
