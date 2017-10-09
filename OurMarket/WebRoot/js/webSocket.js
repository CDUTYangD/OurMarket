/**
 * Created by 16558 on 2017/7/10.
 */
/**
 * Created by 16558 on 2017/4/22.
 */




//定义的一个使用者、接收者名称
//具体使用是可以直接拿取登录账号
var username=document.getElementById("to").value;//转换   
var resiver=document.getElementById("from").value;//转换  原为发送者 现为接收者

console.log(username);



//确定服务器地址
var wsUri='ws:localhost:8080/OurMarket/websocket?username='+username;
try{
    if ('WebSocket' in window) {
        websocket = new WebSocket(wsUri);
    } else if ('MozWebSocket' in window) {
        websocket = new MozWebSocket(wsUri);
    }
//控制台打出地址便于纠错
    console.log("握手成功");

}
catch(err){
    alert("您的浏览器不支持该配置，请升级您的浏览器或者请更换浏览器！");
}
//创建socket实例
//
var textField=document.getElementById("new_message");
var maxChatlog=document.getElementById("chatlog");
//var users=document.getElementById("users");
//var chatlog=document.getElementById("chatlog");


//模拟post发送

function asPost(from,to,msg,time){
	  var temp = document.createElement("form");
	  
	    temp.action ="http://localhost:8080/OurMarket/message";        
	    temp.method = "post";        
	    temp.style.display = "none";               
	    var opt = document.createElement("textarea");        
	    opt.name ="message" ;        
	    opt.value = msg;               
	    temp.appendChild(opt);        
	    var input1=document.createElement("input");
	    input1.name="from";
	    input1.value=from;
	    temp.appendChild(input1);
	    var input2=document.createElement("input")
	    input2.name="to";
	    input2.value=to;
	    temp.appendChild(input2);
	    var input3=document.createElement("input");
	    input3.name="time";
	    input3.value=time;
	    temp.appendChild(input3);
	    document.body.appendChild(temp);  

	    	temp.submit();     
	   // return temp;  
}







websocket.onopen=function (evt) { onOpen(evt); };
websocket.onmessage=function (evt) { onMessage(evt); };
websocket.onerror=function (evt) { onError(evt); };
websocket.onclose=function (evt) { onClose(evt); };
//var output=document.getElementById("output");


function send_message() {
    if(textField.value===""){}
    else
    {
    	
        var Hmessage=textField.value;
        var Jmessage={to:resiver,message:Hmessage};
        var jsonText=JSON.stringify(Jmessage);
        websocket.send( jsonText);
        textField.value="";
        var log=document.createElement("li");
        log.className="even";
        log.tabIndex="0";
        log.hidefocus="true";
        log.style.outline=0;
        log.innerHTML="<a class='user' href='#'>" +
            "<img class='img-responsive avatar_' src='../img/avatar.png' alt=''>" +
            "<span class='user-name'>"+username+"</span></a>" +
            "<div class='reply-content-box'><span class='reply-time' id='chat-time'>"+
            new Date().toLocaleString().toString()+"</span>" +
            "<div class='reply-content pr'><span class='arrow'>&nbsp;</span>"+Hmessage+"</div></div>";
        log.tabIndex="0";
        log.hidefocus="true";
        log.style.outline=0;
        maxChatlog.appendChild(log);
        asPost(resiver,username,Hmessage,new Date().toLocaleString().toString());
    }
    textField.focus();

}
function onOpen() {
}
function onClose() {
}
function onMessage(evt) {
    eval("var result="+evt.data);

    if(result.fromName!=undefined){
        var log=document.createElement("li");
        log.className="odd";
        log.innerHTML="<li class='odd'><a class='user' href='#'>" +
            "<img class='img-responsive avatar_' src='../img/avatar.png' alt=''>" +
            "<span class='user-name'>"+result.fromName+"</span></a>" +
            "<div class='reply-content-box'><span class='reply-time' id='chat-time'>"+result.date+"</span>" +
            "<div class='reply-content pr'><span class='arrow'>&nbsp;</span>"+result.msg+"</div></div></li>";
        log.tabIndex="0";
        log.hidefocus="true";
        log.style.outline=0;
        maxChatlog.appendChild(log);
        log.focus();
        textField.focus();
    }
}
function onError(evt) {
}

function  disconnect() {
    websocket.close();
}
//响应键盘回车事件
document.onkeydown = function (e) {
    e = e || event;
    if (e.keyCode == 13) {  //判断是否单击的enter按键(回车键)
        send_message();
        return false;
    }
};