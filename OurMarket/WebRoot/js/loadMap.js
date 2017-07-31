   var mapObj;
        function init() {
            //����AMap�ĵ�ͼ
            mapObj = new AMap.Map("iCenter", {
                rotateEnable: true,
                dragEnable: true,
                zoomEnable: true,
                //��ά��ͼ��ʾ�ӿ�
                view: new AMap.View2D({
                  //  center: new AMap.LngLat(106.404, 37.915),//��ͼ���ĵ�
                    zoom: 4,//��ͼ��ʾ�����ż���
                    crs: "'EPSG4326"
                })
            });
            //���õ�ͼ�������ͣ����ú��ͼ���¼��أ��γ���Ӣ�Ķ���ͼ
            mapObj.setLang("zh_en");
			
			
			
//����Բ����
circle = new AMap.Circle({   //Բ�α༭������ʽ
        map: mapObj,  
         center:new AMap.LngLat("104.13991928100586 ","30.6719018739570"),
        radius:500,  
        strokeColor: "#F33",  
        strokeOpacity: 1,  
        strokeWeight: 5,  
        fillColor: "ee2200",  
        fillOpacity: 0.35
        
       
   
    });
    
  
  //����Բ  
mapObj.plugin(["AMap.CircleEditor"],function(){   
        circleEditor = new AMap.CircleEditor(mapObj,circle);   //����Բ�α༭������
        circleEditor.open();    //��Բ�α༭��
       
    }); 
    
    
    
    
    //��λ
    
   mapObj.plugin('AMap.Geolocation', function () {
        geolocation = new AMap.Geolocation({
        enableHighAccuracy: true,//�Ƿ�ʹ�ø߾��ȶ�λ��Ĭ��:true
        timeout: 10000,          //����10���ֹͣ��λ��Ĭ�ϣ������
        maximumAge: 0,           //��λ�������0���룬Ĭ�ϣ�0
        convert: true,           //�Զ�ƫ�����꣬ƫ�ƺ������Ϊ�ߵ����꣬Ĭ�ϣ�true
        showButton: true,        //��ʾ��λ��ť��Ĭ�ϣ�true
        buttonPosition: 'LB',    //��λ��ťͣ��λ�ã�Ĭ�ϣ�'LB'�����½�
        buttonOffset: new AMap.Pixel(10, 20),//��λ��ť�����õ�ͣ��λ�õ�ƫ������Ĭ�ϣ�Pixel(10, 20)
        showMarker: true,        //��λ�ɹ����ڶ�λ����λ����ʾ���ǣ�Ĭ�ϣ�true
        //showCircle: true,        //��λ�ɹ�����ԲȦ��ʾ��λ���ȷ�Χ��Ĭ�ϣ�true
        panToLocation: true,     //��λ�ɹ��󽫶�λ����λ����Ϊ��ͼ���ĵ㣬Ĭ�ϣ�true
        zoomToAccuracy:true      //��λ�ɹ��������ͼ��Ұ��Χʹ��λλ�ü����ȷ�Χ��Ұ�ڿɼ���Ĭ�ϣ�false
    });
    mapObj.addControl(geolocation);
    geolocation.getCurrentPosition();
    AMap.event.addListener(geolocation, 'complete', onComplete);//���ض�λ��Ϣ
    AMap.event.addListener(geolocation, 'error', onError);      //���ض�λ������Ϣ
});
        }