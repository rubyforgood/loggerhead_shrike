require "httparty"
require "json"
require 'pry'

class MapApi
  def self.geolocate(location)
    #finds place based on location entered and returns lat and long
    #params[:input] will probably need to be changed
    place = location.strip.gsub(/\s/,'+')
    data = HTTParty.get "https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{place}&key=#{ENV['GOOGLE_PLACES_KEY']}"
    latitude = data["results"].first["geometry"]["location"]["lat"]
    longitude = data["results"].first["geometry"]["location"]["lng"]
    # HTTParty.get "https://www.google.com/maps/embed/v1/search?key=&q=#{latitude},#{longitude}"
    {latitude: latitude, longitude: longitude}
  end
end
