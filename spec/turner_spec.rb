require 'turner.rb'

describe Turner do

  let(:turner) {described_class.new}

  it "starts facing North" do
    expect(turner.orientation).to eq :north
  end

  it "turns right" do
    turner.turn('right')
    expect(turner.orientation).to eq :east
  end

  it "turns left" do
    turner.turn('left')
    expect(turner.orientation).to eq :west
  end

  it "turns multiple times to the same direction" do
    turner.turn('right')
    turner.turn('right')
    turner.turn('right')
    turner.turn('right')
    expect(turner.orientation).to eq :north
  end

  it "turns multiple times to the same direction" do
    turner.turn('left')
    turner.turn('left')
    turner.turn('left')
    turner.turn('left')
    expect(turner.orientation).to eq :north
  end

  it "turns multiple times to the left and right" do
    turner.turn('right')
    turner.turn('right')
    turner.turn('left')
    expect(turner.orientation).to eq :east
  end
end
