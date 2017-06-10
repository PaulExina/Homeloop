class ResultsController < ApplicationController
  def index
    /1 - Get the user location/
    @last_query = Query.last
    user_location = full_address(@last_query[:lat], @last_query[:lon])
    @street_name = user_location.split(",")[0]
    @city_name = user_location.split(",")[1]+user_location.split(",")[2]

    /2 - Get the transactions list/
    @transactions_array = Transaction.nearest_transactions(@last_query[:lat], @last_query[:lon])
    
  end

  /Returns the full formatted address /
  def full_address(lat, lon)
    return Geocoder.search(lat.to_s+","+lon.to_s).first.data["formatted_address"] 
  end 

  /Returns a minified address only street and city names/
  def minified_address(lat, lon)
    address = full_address(lat,lon);
    return address.split(",")[0]+","+address.split(",")[1]
  end
  helper_method :minified_address

  def new_search
    redirect_to 'home/index'
  end 
end
