require 'canvas'

describe Canvas do

  context "initialize" do

    it 'checks height of the canvas' do
      canvas = Canvas.new(4, 20)
      expect(canvas.inside_area.size).to eq 4
    end

    it 'checks length of the row' do
      canvas = Canvas.new(6, 3)
      expect(canvas.inside_area[0].size).to eq 3
    end
  end

  context 'border' do
    it 'checks border sides' do
      canvas = Canvas.new(4, 20)
      canvas.border_sides
      expect(canvas.inside_area[0]).to eq "|"
    end

    it 'checks border top' do
      canvas = Canvas.new(4, 20)
      canvas.border_top_and_bottom
      expect(canvas.inside_area[0]).to include "-"
    end

    it 'checks border bottom' do
      canvas = Canvas.new(4, 20)
      canvas.border_top_and_bottom
      expect(canvas.inside_area[-1]).to include "-"
    end

  end
end
