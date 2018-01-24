require 'navigator.rb'

describe Navigator do

  let(:navigator) {described_class.new}

  it "starts at the position 0" do
    expect(navigator.coordinates).to eq [0,0]
  end

  it "starts facing North" do
    expect(navigator.orientation).to eq :north
  end

  context "Moving" do
    it "moves north" do
     navigator.move
     expect(navigator.coordinates).to eq [0, 1]
    end

    it "moves south" do
      navigator.turn('right')
      navigator.turn('right')
      navigator.move
      expect(navigator.coordinates).to eq [0, -1]
    end

    it "moves east" do
      navigator.turn('right')
      navigator.move
      expect(navigator.coordinates).to eq [1, 0]
    end

    it "moves west" do
      navigator.turn('left')
      navigator.move
      expect(navigator.coordinates).to eq [-1, 0]
    end

  end

  context "Turning" do
    it "turns right" do
      navigator.turn('right')
      expect(navigator.orientation).to eq :east
    end

    it "turns left" do
      navigator.turn('left')
      expect(navigator.orientation).to eq :west
    end

    it "doesn't change coordinates" do
      navigator.turn('right')
      expect(navigator.coordinates).to eq [0,0]
    end

    it "turns multiple times to the same direction" do
      navigator.turn('right')
      navigator.turn('right')
      navigator.turn('right')
      navigator.turn('right')
      expect(navigator.orientation).to eq :north
    end

    it "turns multiple times to the same direction" do
      navigator.turn('left')
      navigator.turn('left')
      navigator.turn('left')
      navigator.turn('left')
      expect(navigator.orientation).to eq :north
    end

    it "turns multiple times to the left and right" do
      navigator.turn('right')
      navigator.turn('right')
      navigator.turn('left')
      expect(navigator.orientation).to eq :east
    end
  end

  it "uses a set of directions to navigate to the right place" do
    expect(navigator.navigate).to eq [5,2]
  end

end
