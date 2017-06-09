class ResultsController < ApplicationController
  def index

    /1 - Get the user location/
    last_query = Query.last
    coords = puts "#{last_query[:lat]},#{last_query[:lon]}"
    user_location = Geocoder.search("48.7673019,2.248758").first.data["formatted_address"] 
    @street_name = user_location.split(",")[0]
    @city_name = user_location.split(",")[1]+user_location.split(",")[2]

    /2 - Get the transactions list/
    @transactions_array = [
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'},
      {:id => 1, :rooms => 1, :area => 20, :price => 200100, :lat => 48.870808,:lon => 2.353689, :date => '2016-01-15'}
    ]
  end
end
