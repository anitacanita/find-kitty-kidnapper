require 'grid.rb'

describe Grid do

  let(:grid) {described_class.new}

  it "starts at the position 0" do
    expect(grid.coordinates).to eq [0,0]
  end

  it "starts facing North" do
    expect(grid.orientation).to eq :north
  end

  context "Direction: right" do
    before(:each) do
      grid.action('right')
    end

    it "changes orientation" do
      expect(grid.orientation).to eq :east
    end

    it "doesn't change coordinates" do
      expect(grid.coordinates).to eq [0,0]
    end
  end

end
