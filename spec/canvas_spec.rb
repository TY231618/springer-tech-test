require 'canvas'

describe Canvas do

  let(:subject) { described_class.new(4, 20) }

  context "initialize" do

    it 'checks height of the canvas' do
      expect(subject.inside_area.size).to eq 4
    end

    it 'checks length of the row' do
      expect(subject.inside_area[0].size).to eq 20
    end
  end

  context 'border' do
    it 'checks border sides' do
      subject.display
      expect(subject.inside_area[1]).to include "|"
    end

    it 'checks border top' do
      subject.display
      expect(subject.inside_area[0]).to include "-"
    end

    it 'checks border bottom' do
      subject.display
      expect(subject.inside_area[-1]).to include "-"
    end

  end
end
