$(window).load(function() {
  loadScript();
});

var map;

function initialize() {
        
  var mapOptions = {
          center: new google.maps.LatLng(-1.277474, 36.8185723),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
        
   // geocoding 
      var geocoding  = new google.maps.Geocoder();
      $("#submit_button_geocoding").click(function(){
        codeAddress(geocoding);
      });
      $("#submit_button_reverse").click(function(){
        codeLatLng(geocoding);
      });
      
   
}

function loadScript() {
	console.log("map loading ...");
  var script = document.createElement('script');
  script.type = 'text/javascript';
  //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    '&v=3.14'+
    '&key=AIzaSyAU3zjVdqdYhE4AQgENDbS5Z5pHArMi5IM'+
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}