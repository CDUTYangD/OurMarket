<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ch">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="左右结构项目，属于大人员的社交工具">
		<meta name="keywords" content="左右结构项目 社交 占座 ">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<title>二手网</title>
		<script language="javascript" src="http://webapi.amap.com/maps?v=1.3&key=168484ce0ca0e0fb381b1dd319ad121e"></script>
		<script src="JS/jquery.min.js"></script>
		<script src="JS/bootstrap.min.js"></script>
		<script>
			$(function() {
				$(".toggle-btn").click(function() {
					$("#leftMeun").toggleClass("show");
					$("#rightContent").toggleClass("pd0px");
				})
			})
		</script>
		<script type="text/javascript">
		function init(){
			var mapObj;
           //创建AMap的地图
            mapObj = new AMap.Map("iCenter",{
                rotateEnable:true,
                dragEnable:true,
                zoomEnable:true,
                //二维地图显示视口
                view: new AMap.View2D({
                    center:new AMap.LngLat(106.404, 37.915),//地图中心点
                    zoom:4 ,//地图显示的缩放级别
                    crs:"'EPSG4326"
                })
            });
            //设置地图语言类型，设置后底图重新加载，形成中英文对照图
            mapObj.setLang("zh_en");
        }
		</script>
		<!--[if lt IE 9]>
          <script src="js/html5shiv.min.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
		<link rel="stylesheet" type="text/css" href="CSS/common.css" />
		<link rel="stylesheet" type="text/css" href="CSS/slide.css" />
		<link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="CSS/flat-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="CSS/jquery.nouislider.css">
	</head>

	<body onload="init()">
		<div id="wrap">
			<!-- 左侧菜单栏目块 -->
			<div class="leftMeun" id="leftMeun">
				<div id="logoDiv">
					<p id="logoP"><img id="logo" alt="" src="./img/logo.png"><span>欢迎来到二手网</span></p>
				</div>
				<div id="personInfor">
					<p id="userName"><img alt="" src="./img/person.png">张三</p>
					<p><img alt="" src="./img/adress.png">四川省成都理工大学</p>
					<p>
						<a>退出登录</a>
					</p>
				</div>
			</div>
			<!-- 右侧具体内容栏目 -->
			<div id="rightContent">
				<a class="toggle-btn" id="nimei">
					<i class="glyphicon glyphicon-align-justify"></i>
				</a>
				<!-- Tab panes -->
					
					<div class="check-div">
						<div class="col-lg-12 col-xs-8 col-sm-8">
								 <!-- Carousel
							    ================================================== -->
							    <div id="myCarousel" class="carousel slide" data-ride="carousel">
							      <!-- Indicators -->
							      <ol class="carousel-indicators">
							        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							        <li data-target="#myCarousel" data-slide-to="1"></li>
							        <li data-target="#myCarousel" data-slide-to="2"></li>
							      </ol>
							      <center>
								      <div class="carousel-inner" role="listbox">
								        <div class="item active">
								          <img class="first-slide" src="img/alipay_logo.png" alt="First slide">
								        </div>
								        <div class="item">
								          <img class="second-slide" src="img/alipay_logo.png" alt="Second slide">
								        </div>
								        <div class="item">
								          <img class="third-slide" src="img/alipay_logo.png" alt="Third slide">
								        </div>
								      </div>
							      </center>
							      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
							        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							        <span class="sr-only">Previous</span>
							      </a>
							      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
							        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							        <span class="sr-only">Next</span>
							      </a>
							    </div><!-- /.carousel -->
							</div>
						</div>
						<div class="check-div form-inline">
							<div class="col-xs-5 clo-xs-offset-4">
									<input type="text" class="form-control input-sm" placeholder="输入商品名搜索">
									<button class="btn btn-white btn-xs ">查 询 </button>
								</div>
						</div>
						<div id="iCenter" class="col-lg-12 col-xs-8  col-sm-8 "></div>
					</div>
			</div>
		</div>
	</body>
</html>
