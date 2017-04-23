console.log('added');

$(document).ready(function(){
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

  //     $.ajax({
  //       url: '/message',
  //       method: 'get',
  //       data: { lat: pos.lat,
  //               lng: pos.lng
  //             }
  //       }).done(function(data){
  //         console.log(data);
  //       });
  //   });
  // };

});
