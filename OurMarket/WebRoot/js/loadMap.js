var map;
        function init() {
           
            map = new AMap.Map("iCenter", {
                rotateEnable: true,
                dragEnable: true,
                zoomEnable: true,
                view: new AMap.View2D({
                    zoom: 4,
                    crs: "'EPSG4326"
                })
            });
            map.setLang("zh_en");


    
   map.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
        enableHighAccuracy: true,
        timeout: 10000,         
        maximumAge: 0,         
           
        showButton: false,       
       // buttonPosition: 'LB',    
        buttonOffset: new AMap.Pixel(10, 20),
        showMarker: false,        
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
        
        function loadCircle(x,y,color){
		   circle=new AMap.Circle({
	             map: map,  
	             center:new AMap.LngLat(x,y),
	             radius:140,  
	     
	             strokeColor: color,  
	            strokeOpacity: 1,  
	             strokeWeight: 5,  
	           fillColor: "ee2200",  
	           fillOpacity: 0.01
	      
	       });
	}	
	
       function loadPoint(x,y){
        	var marker = new AMap.Marker({ //添加自定义点标记
                map: map,
                position:  [x, y], //基点位置
                //offset: new AMap.Pixel(-20, -32), //相对于基点的偏移位置
                content: '<span><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp">' +
                		'<img src="img/5900049bN90cf8936.jpg"/><a/></sapn>',    
                draggable: false,  //是否可拖动
                	 
                  });
        }
 