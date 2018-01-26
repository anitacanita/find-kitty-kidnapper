require 'mover.rb'

describe  Mover do
  let(:mover) {described_class.new}
  
  it "starts at the position 0" do
    expect(mover.coordinates).to eq [0,0]
  end

  it "moves north" do
   mover.move(:north)
   expect(mover.coordinates).to eq [0, 1]
  end

  it "moves south" do
    mover.move(:south)
    expect(mover.coordinates).to eq [0, -1]
  end

  it "moves east" do
    mover.move(:east)
    expect(mover.coordinates).to eq [1, 0]
  end

  it "moves west" do
    mover.move(:west)
    expect(mover.coordinates).to eq [-1, 0]
  end
end
