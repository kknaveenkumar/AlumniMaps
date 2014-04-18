
<html>
  <head>
    <title>Demo - Google Map Reverse Geocoding example</title>

<script src="http://maps.google.com/maps?file=api&v=2&sensor=false&key=ABQIAAAAcBlCkeOPJin8k-qaQXzU7BQGBuCPWxdxlOb3ZaeDB3q0vlcH5BTABsi26yLfIbuiM1r2veUY3cXjEA" type="text/javascript"></script>
<script type="text/javascript">
	var map=null;
	var geocoder=null;
	function initialize(){
		if(GBrowserIsCompatible()){
			map=new GMap2(document.getElementById("map_canvas"));
			map.setCenter(new GLatLng(21.4419,0),1);
			geocoder=new GClientGeocoder();
			}
		}
	function getLatLng(point){
		var matchll=/\(([-.\d]*), ([-.\d]*)/.exec(point);
		if(matchll){
			var lat=parseFloat(matchll[1]);
			var lon=parseFloat(matchll[2]);
			lat=lat.toFixed(6);lon=lon.toFixed(6);
			}
		else{
			var message="<b>Error extracting info from</b>:"+point+"";
			var messagRoboGEO=message;
			}
	return new GLatLng(lat,lon);
	}
	function searchPlace(place){
		if(geocoder){
			geocoder.getLatLng(place,function(point){
				if(!point){alert(place+" not found");
				}
				else{
					var latLng=getLatLng(point);
					var info="<h3>"+place+"</h3>Latitude: "+latLng.lat()+"  Longitude:"+latLng.lng();
					var marker=new GMarker(point);
					map.addOverlay(marker);
					marker.openInfoWindowHtml(info);
					}
				});
			}
		}
	</script>
</head>
<body onload="initialize()" onunload="GUnload()">
	<h1>Google Map Reverse Geocode Example</h1>
	Read this article for more information: <a href="http://viralpatel.net/blogs/2009/07/google-map-reverse-geocoding-tutorial-example.html"><strong>Google Maps Reverse Geocoding Tutorial with Example</strong></a>
	<br/>
	<br/>
	Enter a place to search:
	<br/>
	<input id="place" type="text" size="50"/>
	<input type="button" value="Search" onclick="searchPlace(document.getElementById('place').value)"/>
	<div id="map_canvas" style="width: 500px; height: 300px"></div>

	<br/>

	<div>
		<span>
			<script src="http://digg.com/tools/diggthis.js" type="text/javascript"></script>
		</span>
		<span>
			<script type="text/javascript">var dzone_url='[url]';</script>
			<script type="text/javascript">var dzone_title='[title]';</script>
			<script type="text/javascript">var dzone_blurb='[description]';</script>
			<script type="text/javascript">var dzone_style='1';</script>
			<script language="javascript" src="http://widgets.dzone.com/links/widgets/zoneit.js"></script>
		</span>
	</div>
<!-- ADDFREESTATS.COM AUTOCODE V4.0 -->
<span style="display:none">
<script type="text/javascript">var AFS_Account="00814640";var AFS_Tracker="auto";var AFS_Server="www8";var AFS_Page="DetectName";var AFS_Url="DetectUrl";</script>
<script type="text/javascript" src="http://www8.addfreestats.com/cgi-bin/afstrack.cgi?usr=00814640"></script>
<noscript>
<a href="http://www.addfreestats.com">
<img src="http://www8.addfreestats.com/cgi-bin/connect.cgi?usr=00814640Pauto" border=0 alt="Free Web Stats">Web Stats</a>
</noscript>
</span>
<!-- ENDADDFREESTATS.COM AUTOCODE V4.0  -->
</body>
</html>
