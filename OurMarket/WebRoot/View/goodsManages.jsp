<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>物品管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/Logout.js"></script>

<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/dashboard.css" />
<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/carousel.css" />
<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/font-awesome.css">
<script type="text/javascript">
	$(function() {
		$("#button_show_right,#button_show_left").click(function() {
			if ($(this).attr('id').indexOf("right") > 0) {
				if ($("#button_show_left").attr("aria-expanded") == "true") {
					$("#button_show_left").trigger('click');
				}
			} else {
				if ($("#button_show_right").attr("aria-expanded") == "true") {
					$("#button_show_right").trigger('click');
				}
			}
		});
	})
	
</script>
</head>
<body>
<!--这是位于最上方的可以伸缩的菜单栏，宽度充满屏幕，悬浮在最顶上-->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
	<div class="container-fluid">
		<!--流动的容器-->
		<div class="navbar-header">
			<button id="button_show_right" type="button" class="navbar-toggle collapsed" 
				data-toggle="collapse" data-target="#navbar-right" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <!--<img src="img/th.jpg" style="height: 100%;width: 100%;"/>-->
				这是文字/图片logo <!--条件：图片要控制宽度，文字也要控制长度，不然会溢出-->
			</a>
			<!--这是logo标志-->
		</div>

		<!--这是向右对齐的列表-->
		<div id="navbar-right" class="navbar-collapse collapse">
			<!--这是一个汉堡按钮-->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="home">首页</a></li>
					<li><a href="http://localhost:8080/OurMarket/privateMessage">消息</a></li>
					<li><a href="personalZoom">个人中心</a></li>
					<li><a href="service">客服</a></li>
					<li><a onclick="Logout()" >登出</a></li>
					
				</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>

	</div>
</nav>
<div  class="img-responsive hidden-sm hidden-xs  "style="background-image: url(<%=basePath%>/img/service.jpg); width: 100%;height: 100%;background-size: 100%;background-repeat: no-repeat;" >
	<br><br><br><br><br><br>
	<br><br><br><br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutaway"><button id="botton1" class="btn-success btn-lg"style="width: 140px;">我要上架</button></a>
	</div>
	<br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutoff"><button id="botton2" class="btn-warning btn-lg"style="width: 140px;">我要下架</button></a>
	</div>
	<br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutaway"><button id="botton3" class="btn-primary btn-lg"style="width: 140px;">信息修改</button></a>
	</div>
	<br><br><br><br><br><br><br><br><br>
</div>

<!--当设备屏幕小的时候-->
<div  class="img-responsive hidden-md hidden-lg "style="background-image: url(<%=basePath%>/img/servicem.jpg); width: 100%;height: 100%;background-size: 100%;background-repeat: no-repeat;" >
	<br><br><br><br><br><br>
	<br><br><br><br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutaway"><button class="btn-success btn-lg" style="width: 140px;">我要上架</button></a>
	</div>
	<br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutoff"><button class="btn-warning btn-lg"style="width: 140px;">我要下架</button></a>
	</div>
	<br><br><br>
	<div style="text-align: center;">
		<a href="goodsPutaway"><button class="btn-primary btn-lg"style="width: 140px;">信息修改</button></a>
	</div>
	<br><br><br><br><br><br><br><br><br> 
</div>
</body>
<script type="text/javascript">
	
	
</script>
</html>
