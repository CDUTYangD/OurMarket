<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>二手网</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->

<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<script language="javascript" src="http://webapi.amap.com/maps?v=1.3&key=168484ce0ca0e0fb381b1dd319ad121e"></script>
<script type="text/javascript">
         var mapObj;
        function init(){
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
</head>
<body onload="init()">
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top form-inline" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <p class="navbar-brand" >Welcome</p>
            </div>
            <!-- /.navbar-header -->
            <ul class="nav navbar-nav navbar-right">
			    <li class="dropdown">
	        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png"><span class="badge">9</span></a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header text-center">
							<strong>Hi , 张三</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> 消息 <span class="label label-success">42</span></a></li>
						<li><a href="#"><i class="fa fa-comments"></i> 评论 <span class="label label-warning">42</span></a></li>
						<li class="dropdown-menu-header text-center">
							<strong>设置</strong>
						</li>
						<li class="m_2"><a href="#"><i class="fa fa-user"></i> 个人中心</a></li>
						<li class="divider"></li>
						<li class="m_2"><a href="#"><i class="fa fa-lock"></i> 登出</a></li>	
	        		</ul>
	      		</li>
			</ul>
			<form class="navbar-form navbar-right">
					
              		<input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
            </form> 
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                        	<!--<p><img alt="" src="img/adress.png" class="fa"> <span>四川省成都理工大学</span></p>  -->
                            <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>四川省成都理工大学</a>
                        </li>
                        <li>
                            <a href="widgets.html"><i class="fa fa-envelope nav_icon"></i>购物管理</a>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>销售管理</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
        
        <div id="page-wrapper">
        <div class="graphs">
        <center>
			<div id="myCarousel" class="carousel slide " >
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>   
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="img/alipay_logo.png" alt="First slide">
				</div>
				<div class="item">
					<img src="img/alipay_logo.png" alt="Second slide">
				</div>
				<div class="item">
					<img src="img/alipay_logo.png" alt="Third slide">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel" 
			   data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel" 
			   data-slide="next">&rsaquo;</a>
		</div> 
		</center>
        <!-- 地图 -->
      <div style="width: 100%;padding: 5px 0;">
      		<div id="iCenter" style="height:100% "></div>
      </div>
		</div>
       </div>
      <!-- /#page-wrapper -->
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
