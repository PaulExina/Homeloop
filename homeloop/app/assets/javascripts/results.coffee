# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'DOMContentLoaded', ->
    # Retrieve the user location
    coords_array = document.getElementsByTagName('textarea')
    center_lat = parseFloat(coords_array[0].innerHTML.split(',')[0])
    center_lon = parseFloat(coords_array[0].innerHTML.split(',')[1])

    # Make it the center of the map
    map = new (google.maps.Map)(document.getElementById('map'),
        center: {lat: center_lat,lng: center_lon},
        scrollwheel: false,
        zoom: 16)

    # Put a marker for every transaction found 
    i = 0
    markers = []
    
    while i < coords_array.length
        coords_str = coords_array[i].innerHTML
        lat = parseFloat(coords_str.split(',')[0])
        lon = parseFloat(coords_str.split(',')[1])
        marker = new (google.maps.Marker)(position: new (google.maps.LatLng)(lat, lon),
        map: map)
        
        if i == 0
            marker.setAnimation google.maps.Animation.BOUNCE
        else
            markers.push marker

        i++
    
    # Toggle bounce animation when click on the matching row in the table
    tr_rows = document.getElementsByClassName('transaction-row')
    
    n = 0
    while n < tr_rows.length
        tr_rows[n].addEventListener 'click',(e) ->
            index = parseInt e.target.parentElement.attributes.index.value
            markers[index].setAnimation google.maps.Animation.BOUNCE
            j = 0
            while j < tr_rows.length
                if !(j == index)
                    markers[j].setAnimation null
                j++
            return
        n++

return 


  