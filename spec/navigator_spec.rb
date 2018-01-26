require 'navigator.rb'

describe Navigator do

  let(:navigator) {described_class.new}


  it "uses a set of directions to navigate to the right place" do
    uri = URI("http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/directions")

    expect(Net::HTTP).to receive(:get).with(uri).and_return "{\"directions\": [\"forward\", \"left\", \"right\"]}"

    expect(APICaller).to receive(:set_location).with([0,1]).and_return "SUCCESS!"

    expect(navigator.navigate).to eq "SUCCESS!"
  end

end
