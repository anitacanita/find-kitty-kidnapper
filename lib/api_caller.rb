require 'json'
require 'net/http'

class APICaller

  URL = "http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/directions"


  def self.get_directions
    uri = URI(URL)
    response = Net::HTTP.get(uri)
    json_response= JSON.parse(response)
    json_response['directions']
  end

  def self.set_location(coordinates)
    url = "http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/location/#{coordinates[0]}/#{coordinates[1]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end

end
