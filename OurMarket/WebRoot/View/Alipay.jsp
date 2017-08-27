<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>æ¯ä»å®å³æ¶å°è´¦äº¤ææ¥å£</title>
</head>

<style>
    html,body {
        width:100%;
        min-width:1200px;
        height:auto;
        padding:0;
        margin:0;
        font-family:"å¾®è½¯éé»";
        background-color:#242736
    }
    .header {
        width:100%;
        margin:0 auto;
        height:230px;
        background-color:#fff
    }
    .container {
        width:100%;
        min-width:100px;
        height:auto
    }
    .black {
        background-color:#242736
    }
    .blue {
        background-color:#0ae
    }
    .qrcode {
        width:1200px;
        margin:0 auto;
        height:30px;
        background-color:#242736
    }
    .littlecode {
        width:16px;
        height:16px;
        margin-top:6px;
        cursor:pointer;
        float:right
    }
    .showqrs {
        top:30px;
        position:absolute;
        width:100px;
        margin-left:-65px;
        height:160px;
        display:none
    }
    .shtoparrow {
        width:0;
        height:0;
        margin-left:65px;
        border-left:8px solid transparent;
        border-right:8px solid transparent;
        border-bottom:8px solid #e7e8eb;
        margin-bottom:0;
        font-size:0;
        line-height:0
    }
    .guanzhuqr {
        text-align:center;
        background-color:#e7e8eb;
        border:1px solid #e7e8eb
    }
    .guanzhuqr img {
        margin-top:10px;
        width:80px
    }
    .shmsg {
        margin-left:10px;
        width:80px;
        height:16px;
        line-height:16px;
        font-size:12px;
        color:#242323;
        text-align:center
    }
    .nav {
        width:1200px;
        margin:0 auto;
        height:70px;
    }
    .open,.logo {
        display:block;
        float:left;
        height:40px;
        width:85px;
        margin-top:20px
    }
    .divier {
        display:block;
        float:left;
        margin-left:20px;
        margin-right:20px;
        margin-top:23px;
        width:1px;
        height:24px;
        background-color:#d3d3d3
    }
    .open {
        line-height:30px;
        font-size:20px;
        text-decoration:none;
        color:#1a1a1a
    }
    .navbar {
        float:right;
        width:200px;
        height:40px;
        margin-top:15px;
        list-style:none
    }
    .navbar li {
        float:left;
        width:100px;
        height:40px
    }
    .navbar li a {
        display:inline-block;
        width:100px;
        height:40px;
        line-height:40px;
        font-size:16px;
        color:#1a1a1a;
        text-decoration:none;
        text-align:center
    }
    .navbar li a:hover {
        color:#00AAEE
    }
    .title {
        width:1200px;
        margin:0 auto;
        height:80px;
        line-height:80px;
        font-size:20px;
        color:#FFF
    }
    .content {
        width:100%;
        min-width:1200px;
        height:660px;
        background-color:#fff;      
    }
    .alipayform {
        width:800px;
        margin:0 auto;
        height:600px;
        border:1px solid #0ae
    }
    .element {
        width:600px;
        height:80px;
        margin-left:100px;
        font-size:20px
    }
    .etitle,.einput {
        float:left;
        height:26px
    }
    .etitle {
        width:150px;
        line-height:26px;
        text-align:right
    }
    .einput {
        width:200px;
        margin-left:20px
    }
    .einput input {
        width:398px;
        height:24px;
        border:1px solid #0ae;
        font-size:16px
    }
    .mark {
        margin-top: 10px;
        width:500px;
        height:30px;
        margin-left:80px;
        line-height:30px;
        font-size:12px;
        color:#999
    }
    .legend {
        margin-left:100px;
        font-size:24px
    }
    .alisubmit {
        width:400px;
        height:40px;
        border:0;
        background-color:#0ae;
        font-size:16px;
        color:#FFF;
        cursor:pointer;
        margin-left:170px
    }
    .footer {
        width:100%;
        height:120px;
        background-color:#242735
    }
    .footer-sub a,span {
        color:#808080;
        font-size:12px;
        text-decoration:none
    }
    .footer-sub a:hover {
        color:#00aeee
    }
    .footer-sub span {
        margin:0 3px
    }
    .footer-sub {
        padding-top:40px;
        height:20px;
        width:600px;
        margin:0 auto;
        text-align:center
    }
</style>
<body>
    <div class="header">
        <div class="container black">
            <div class="qrcode">
                <div class="littlecode">
                    <img width="16px" src="img/little_qrcode.jpg" id="licode">
                    <div class="showqrs" id="showqrs">
                        <div class="shtoparrow"></div>
                        <div class="guanzhuqr">
                            <img src="img/guanzhu_qrcode.png" width="80">
                            <div class="shmsg" style="margin-top:5px;">
                            	è¯·æ«ç å³æ³¨
                            </div>
                            <div class="shmsg" style="margin-bottom:5px;">
                               	 æ¥æ¶éè¦ä¿¡æ¯
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
        <div class="container">
            <div class="nav">
                <a href="https://www.alipay.com/" class="logo"><img src="img/alipay_logo.png" height="30px"></a>
                <span class="divier"></span>
                <a href="http://open.alipay.com/platform/home.htm" class="open" target="_blank">å¼æ¾å¹³å°</a>
                <ul class="navbar">
                    <li><a href="https://doc.open.alipay.com/doc2/detail?treeId=62&articleId=103566&docType=1" target="_blank">å¨çº¿ææ¡£</a></li>
                    <li><a href="https://cschannel.alipay.com/portal.htm?sourceId=213" target="_blank">ææ¯æ¯æ</a></li>
                </ul>
            </div>
        </div>
        <div class="container blue">
            <div class="title">æ¯ä»å®å³æ¶å°è´¦(create_direct_pay_by_user)</div>
        </div>
    </div>
    <div class="content">
        <form action="alipayapi.jsp" class="alipayform" method="POST" target="_blank">
            <div class="element" style="margin-top:60px;">
                <div class="legend">æ¯ä»å®å³æ¶å°è´¦äº¤ææ¥å£å¿«ééé </div>
            </div>
            <div class="element">
                <div class="etitle">åæ·è®¢åå·:</div>
                <div class="einput"><input type="text" name="WIDout_trade_no" id="out_trade_no"></div>
                <br>
                <div class="mark">æ³¨æï¼åæ·è®¢åå·(out_trade_no).å¿å¡«(å»ºè®®æ¯è±æå­æ¯åæ°å­,ä¸è½å«æç¹æ®å­ç¬¦)</div>
            </div>
            
            <div class="element">
                <div class="etitle">åååç§°:</div>
                <div class="einput"><input type="text" name="WIDsubject" value="teståå123"></div>
                <br>
                <div class="mark">æ³¨æï¼äº§ååç§°(subject)ï¼å¿å¡«(å»ºè®®ä¸­æï¼è±æï¼æ°å­ï¼ä¸è½å«æç¹æ®å­ç¬¦)</div>
            </div>
            <div class="element">
                <div class="etitle">ä»æ¬¾éé¢:</div>
                <div class="einput"><input type="text" name="WIDtotal_fee" value="0.01"></div>
                <br>
                <div class="mark">æ³¨æï¼ä»æ¬¾éé¢(total_fee)ï¼å¿å¡«(æ ¼å¼å¦ï¼1.00,è¯·ç²¾ç¡®å°å)</div>
            </div>
			<div class="element">
                <div class="etitle">ååæè¿°:</div>
                <div class="einput"><input type="text" name="WIDbody" value="å³æ¶å°è´¦æµè¯"></div>
                <br>
                <div class="mark">æ³¨æï¼ååæè¿°(body)ï¼éå¡«(å»ºè®®ä¸­æï¼è±æï¼æ°å­ï¼ä¸è½å«æç¹æ®å­ç¬¦)</div>
            </div>
            <div class="element">
                <input type="submit" class="alisubmit" value ="ç¡®è®¤æ¯ä»">
            </div>
        </form>
    </div>
    <div id="returnAli"> </div>
    <div class="footer">
        <p class="footer-sub">
            <a href="http://ab.alipay.com/i/index.htm" target="_blank">å³äºæ¯ä»å®</a><span>|</span>
            <a href="https://e.alipay.com/index.htm" target="_blank">åå®¶ä¸­å¿</a><span>|</span>
            <a href="https://job.alibaba.com/zhaopin/index.htm" target="_blank">è¯å¾è±æ</a><span>|</span>
            <a href="http://ab.alipay.com/i/lianxi.htm" target="_blank">èç³»æä»¬</a><span>|</span>
            <a href="#" id="international" target="_blank">International&nbsp;Business</a><span>|</span>
            <a href="http://ab.alipay.com/i/jieshao.htm#en" target="_blank">About Alipay</a>
            <br>
             <span>æ¯ä»å®çæææ</span>
            <span class="footer-date">2004-2016</span>
            <span><a href="http://fun.alipay.com/certificate/jyxkz.htm" target="_blank">ICPè¯ï¼æ²ªB2-20150087</a></span>
        </p>
    </div>
</body>
<script>

    $(function (){  
        $("#sbumitBtn").on('click', function(){  
            $.ajax({  
                type : "post",  
                data : {  
                    WIDout_trade_no : $('#out_trade_no').val(),  
                    WIDsubject : $('#WIDsubject').val(),  
                    WIDtotal_fee : $('#WIDtotal_fee').val(),  
                    WIDbody : $('#WIDbody').val()
                },  
                url : "${ctx}/aliPay/open", 
                success : function(data) {  
                    $('#returnAli').append(data.sHtmlText);  
                },  
                error : function(da){  
                }  
            });  
        })  
          
    });  

        var even = document.getElementById("licode");   
        var showqrs = document.getElementById("showqrs");
         even.onmouseover = function(){
            showqrs.style.display = "block"; 
         }
         even.onmouseleave = function(){
            showqrs.style.display = "none";
         }
         
         var out_trade_no = document.getElementById("out_trade_no");

         //è®¾å®æ¶é´æ ¼å¼åå½æ°
         Date.prototype.format = function (format) {
               var args = {
                   "M+": this.getMonth() + 1,
                   "d+": this.getDate(),
                   "h+": this.getHours(),
                   "m+": this.getMinutes(),
                   "s+": this.getSeconds(),
               };
               if (/(y+)/.test(format))
                   format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
               for (var i in args) {
                   var n = args[i];
                   if (new RegExp("(" + i + ")").test(format))
                       format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? n : ("00" + n).substr(("" + n).length));
               }
               return format;
           };
           
         out_trade_no.value = 'test'+ new Date().format("yyyyMMddhhmmss");
 
</script>

</html>