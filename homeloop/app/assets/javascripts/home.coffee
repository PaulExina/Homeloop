# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'DOMContentLoaded', ->
    
    # Get user location
    showPosition = (position) ->
        document.getElementById('query_lat').innerHTML = position.coords.latitude
        document.getElementById('query_lon').innerHTML = position.coords.longitude
        document.getElementById('query_submit').className="btn btn-primary"

    if navigator.geolocation
        navigator.geolocation.getCurrentPosition showPosition
    return

    
