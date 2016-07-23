 // $(document).ready( 
 //  function initMap() {
 //    var myPos = {lat: 40.7849904, lng: -73.9557979};
 //    var mapDiv = document.getElementById('map');
 //    var map = new google.maps.Map(mapDiv, {
 //      center: {lat: 40.7849904, lng: -73.9557979},
 //      zoom: 8
 //    });
  
 //    var infowindow = new google.maps.InfoWindow({
 //      content: "Yo yo"
 //    })

 //    var marker = new google.maps.Marker({
 //      position: myPos,
 //      map: map,
 //    });
 //    marker.addListener("click", function() {
 //      infowindow.open(map, marker)
 //    });
 //  });

 //  alert("hi!")

// var handler = Gmaps.build("Google");
// handler.buildMap({ provider: {}, internal: {id: "map"}}, function(){
//   markers = handler.addMarkers([
//     {
//       "lat": 0,
//       "lng": 0,
//       "picture": {
//         "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
//         "width":  32,
//         "height": 32
//       },
//       "infowindow": "hello!"
//     }
//   ]);
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// });