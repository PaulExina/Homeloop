class HomeController < ApplicationController
  def index
  end

  def new_query
    /1 - Get the query params/
        /a - Get the email input value/
        email = params['query_email']
        /b - Get the geolocation /
        lat = params['query_lat'].to_f
        lon = params['query_lon'].to_f
    /2 - Create the query object/
        @query = Query.create(:email => email, :lat => lat, :lon => lon, :res_count => 0)
    /3 - Redirect to results controller/
        redirect_to '/results'
  end

end
