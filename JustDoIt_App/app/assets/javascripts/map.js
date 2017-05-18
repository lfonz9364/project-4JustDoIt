console.log('added');

function getDistance () {
  var current_lat;
  var current_lng;

  $.ajax({
    method: 'GET',
    url: '/api/locations/'
   }).done(function(result){
     if (navigator.geolocation) {
       navigator.geolocation.getCurrentPosition(function(position) {
           var current_lat = position.coords.latitude;
           var current_lng = position.coords.longitude;
           var rad = function(x) {
           return x * Math.PI / 180;
           };

           var R = 6378137; // Earth’s mean radius in meter
           for (var i = 0; i < result.length; i++) {
             var dLat = rad(result[i].latitude - current_lat);
             var dLong = rad(result[i].longitude - current_lng);
             var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
             Math.cos(rad(current_lat)) * Math.cos(rad(result[i].latitude)) *
             Math.sin(dLong / 2) * Math.sin(dLong / 2);
             var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
             var d = R * c;
             var km = d / 1000;


             $('#' + result[i].user_id).html('You are currently ' + km.toFixed(2) + ' KM to meeting place');
          };
        });
      };
  });
};

function geoInput(){
  $(function(){
    $("#geocomplete").geocomplete()
  });
};
