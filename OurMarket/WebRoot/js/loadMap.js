   var map;
        function init() {
            //����AMap�ĵ�ͼ
            map = new AMap.Map("iCenter", {
                rotateEnable: true,
                dragEnable: true,
                zoomEnable: true,
                view: new AMap.View2D({
                    zoom: 4,//��ͼ��ʾ�����ż���
                    crs: "'EPSG4326"
                })
            });
            map.setLang("zh_en");
			
			
			
//����Բ����
		   //银杏圈子
		   circleYinXing = new AMap.Circle({
           map: map,  
           center:new AMap.LngLat("104.1452","30.67100"),
           radius:140,  
           strokeColor: "#32CD32",  
           strokeOpacity: 1,  
           strokeWeight: 5,  
           fillColor: "ee2200",  
           fillOpacity: 0.01
      
       });
       
   		 //珙桐圈子
	   circleYinXing = new AMap.Circle({
       map: map,  
       center:new AMap.LngLat("104.1488","30.67200"),
       radius:140,  
       strokeColor: "black",  
       strokeOpacity: 1,  
       strokeWeight: 5,  
       fillColor: "ee2200",  
       fillOpacity: 0.01
  
  		 });
       
   		//芙蓉圈子
   	   circleFuRong = new AMap.Circle({   
       map: map,  
       center:new AMap.LngLat("104.1425","30.67650"),
       radius:140,  
       strokeColor: "#F33",  
       strokeOpacity: 1,  
       strokeWeight: 5,  
       fillColor: "ee2200",  
       fillOpacity: 0.01
  
   });
   
   		 //松林圈子
  	   circleSongLin = new AMap.Circle({   //Բ�α༭������ʽ
       map: map,  
       center:new AMap.LngLat("104.1520","30.67285"),
       radius:140,  
       strokeColor: "#0000FF",  
       strokeOpacity: 1,  
       strokeWeight: 5,  
       fillColor: "ee2200",  
       fillOpacity: 0.01
  
   });
   		//香樟圈子
   	   circleXiangZhang = new AMap.Circle({  
       map: map,  
       center:new AMap.LngLat("104.1545","30.67684"),
       radius:140,  
       strokeColor: "#FFA500",  
       strokeOpacity: 1,  
       strokeWeight: 5,  
       fillColor: "ee2200",  
       fillOpacity: 0.01
  
   });
   
     //北苑圈子
  	   circleBeiYuan = new AMap.Circle({
       map: map,  
       center:new AMap.LngLat("104.1478","30.67500"),
       radius:140,  
       strokeColor: "#00FFFF",  
       strokeOpacity: 1,  
       strokeWeight: 5,  
       fillColor: "ee2200",  
       fillOpacity: 0.01
  
   }); 
      // 实例化点标记
	

    //银杏
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position:  [104.1452, 30.67100], //基点位置
        //offset: new AMap.Pixel(-20, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容
    });

    		
        //香樟
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position:  [104.1545, 30.67684], //基点位置
       // offset: new AMap.Pixel(0, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容
    });

    
        //珙桐
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position:  [104.1488, 30.67200], //基点位置
       // offset: new AMap.Pixel(0, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容  
    });
    
       //松林
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position: [104.1520, 30.67285], //基点位置
       // offset: new AMap.Pixel(0, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容
    });
    
        //芙蓉
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position:  [104.1425, 30.67650], //基点位置
       // offset: new AMap.Pixel(0, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容  
    });
    
        //北苑
    		var marker = new AMap.Marker({ //添加自定义点标记
        map: map,
        position:  [104.1478, 30.67500], //基点位置
       // offset: new AMap.Pixel(0, -32), //相对于基点的偏移位置
        draggable: false,  //是否可拖动
        content: '<div class="marker-route marker-marker-bus-from  img width"><i class="fa fa-3x fa-map-marker"></i><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a><a href="http://localhost:8080/OurMarket/View/goodsDetails.jsp"><img class="" src="img/5900049bN90cf8936.jpg" style=""/></a></div>'   //自定义点标记覆盖物内容  
    });
    
    
  

    
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