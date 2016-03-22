require 'canvas'

describe Canvas do
  it 'initializes with a two dimensional array' do
    canvas = Canvas.new(4, 20)
    expect(canvas.inside_area.size).to eq 4
  end
end
