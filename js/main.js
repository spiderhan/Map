var mymap = L.map('map', {
	center: [51.454513, -2.587910],
	zoom: 16
});

var access_token = "";

L.tileLayer('https://api.mapbox.com/v4/mapbox.satellite/1/0/0@2x.jpg90?access_token=sk.eyJ1Ijoic3BpZGVyaGFuIiwiYSI6ImNsMDljZnhpbTA2eHEzanBmZmx2cDFoNmIifQ.Kvs1LHTdza-rX97MYwtRVw', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox.streets',
    accessToken: 'your.mapbox.access.token'
}).addTo(mymap);