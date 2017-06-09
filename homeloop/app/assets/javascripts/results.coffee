# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'DOMContentLoaded', ->
    coords_array = document.getElementsByTagName('textarea')
    center_lat = parseFloat(coords_array[0].innerHTML.split(',')[0])
    center_lon = parseFloat(coords_array[0].innerHTML.split(',')[1])

    map = new (google.maps.Map)(document.getElementById('map'),
        center: {lat: center_lat,lng: center_lon},
        scrollwheel: false,
        zoom: 15)

    i = 1
    while i < coords_array.length
        coords_str = coords_array[i].innerHTML
        lat = parseFloat(coords_str.split(',')[0])
        lon = parseFloat(coords_str.split(',')[1])
        marker = new (google.maps.Marker)(position: new (google.maps.LatLng)(lat, lon),
        map: map,
        title: i)
        i++
    return
    
return 


  