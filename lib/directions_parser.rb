require 'json'
require 'net/http'

module DirectionsParser
  url = "http://which-technical-exercise.herokuapp.com/api/adscarlos@gmail.com/directions"
  uri = URI(url)
  response = Net::HTTP.get(uri)

  json_response= JSON.parse(response)

  DIRECTIONS = json_response['directions']
end
