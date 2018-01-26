require 'api_caller.rb'
describe APICaller do

  it "returns a directions array" do
    uri = URI("http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/directions")

    expect(Net::HTTP).to receive(:get).with(uri).and_return "{\"directions\": [\"forward\", \"left\", \"right\"]}"

    expect(described_class.get_directions).to eq ["forward",
                                                    "left",
                                                    "right"]
  end

  it 'makes a HTTP request with correct URI' do
    uri = URI("http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/location/0/1")

    expect(Net::HTTP).to receive(:get).with(uri).and_return "{}"

    expect(described_class.set_location([0,1])).to eq({})
  end

end
