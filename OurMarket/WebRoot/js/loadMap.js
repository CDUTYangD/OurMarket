var map;
function init() {
	map = new AMap.Map("iCenter", {
		rotateEnable : true,
		dragEnable : true,
		zoomEnable : true,
		view : new AMap.View2D({
			zoom : 4,
			crs : "'EPSG4326"
		})
	});
	map.setLang("zh_en");


	   
	   map.plugin('AMap.Geolocation', function () {
	        geolocation = new AMap.Geolocation({
	        enableHighAccuracy: true,
	        timeout: 10000,         
	        maximumAge: 0,         
	        convert: true,           
	        showButton: true,       
	        buttonPosition: 'LB',    
	        buttonOffset: new AMap.Pixel(10, 20),
	        showMarker: true,        
	        //showCircle: true,       
	        panToLocation: true,    
	        zoomToAccuracy:true      
	    });
	    map.addControl(geolocation);
	    geolocation.getCurrentPosition();
	    AMap.event.addListener(geolocation, 'complete', onComplete);
	    AMap.event.addListener(geolocation, 'error', onError);      
	});
}

function loadCircle(x, y, color) {
	circle = new AMap.Circle({
		map : map,
		center : new AMap.LngLat(x, y),
		radius : 140,

		strokeColor : color,
		strokeOpacity : 1,
		strokeWeight : 5,
		fillColor : "ee2200",
		fillOpacity : 0.01
	});
}

var reJs = function(str1) {
	if ((str1.indexOf("%5B") >= 0) || (str1.indexOf("%3C") >= 0)) {
		str1 = str1.replace(/%5B/g, "[");
		str1 = str1.replace(/%7B/g, "{");
		str1 = str1.replace(/%22/g, '"');
		str1 = str1.replace(/%2C/g, ",");
		str1 = str1.replace(/%3A/g, ":");
		str1 = str1.replace(/%23/g, "#");
		str1 = str1.replace(/%7D/g, "}");
		str1 = str1.replace(/%5D/g, "]");
		str1 = str1.replace(/%3D/g, "=");
		str1 = str1.replace(/%2F/g, "/");
		str1 = str1.replace(/%3C/g, "<");
		str1 = str1.replace(/%27/g, "'");
		str1 = str1.replace(/%3E/g, ">");
		str1 = str1.replace(/%2520/g, " ");
		str1 = str1.replace(/%3B/g, ";");
		str1=str1.replace(/%28/g,"(");
		str1=str1.replace(/%29/g,")");
	}
	return str1;
}
function sendGood(goodId){
	 var temp = document.createElement("form");
	  
	    temp.action ="http://localhost:8080/OurMarket/goodsDetail";        
	    temp.method = "post";        
	    temp.style.display = "none";               
	    var input3=document.createElement("input");
	    input3.name="Gid";
	    input3.value=goodId;
	    temp.appendChild(input3);                   
	    document.body.appendChild(temp);
    	temp.submit(); 
}
function loadPoint(x, y, text) {
	var marker = new AMap.Marker({ //添加自定义点标记
		map : map,
		position : [ x, y ], //基点位置
		//offset: new AMap.Pixel(-20, -32), //相对于基点的偏移位置
		content :'<div class="img" style="">'+
		'<i class="fa fa-3x fa-map-marker"></i>'+
		//'<a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp">' +
		text + '</div>',
		draggable : false, //是否可拖动

	});
}