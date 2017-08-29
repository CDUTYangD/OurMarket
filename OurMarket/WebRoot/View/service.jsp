<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/Logout.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/dashboard.css" />
<link rel="stylesheet" type="text/css" href="../css/carousel.css" />
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css" />
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
	<body style="background: url(../img/ser.jpg);">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
		<div class="container-fluid">
			<!--流动的容器-->
			<div class="navbar-header">
				<button id="button_show_left" type="button" class="navbar-toggle collapsed" 
					style="float:left;margin-left:15px;"
					data-toggle="collapse" data-target="#navbar-left" 
					aria-expanded="false"aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<!--这是按钮  缩放按钮-->
				<button id="button_show_right" type="button" class="navbar-toggle collapsed" 
					data-toggle="collapse" data-target="#navbar-right" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
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
					<li><a href="../home.jsp">首页</a></li>
					<li><a href="Message.jsp">消息</a></li>
					<li><a href="personalZoom.jsp">个人中心</a></li>
					<li><a href="service.jsp">客服</a></li>
					<li><a onclick="Logout()" >登出</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			</div>
		</div>
		</nav>
		
		<!-- 大屏屏幕显示 -->
		<div class="hidden-sm hidden-xs">
		<div id="textbox" style="position:absolute;top:30%;left:25%;right:25%;">
			<form role="form">
			<div class="form-group">
				<label for="name" style=""><h4 style="background-color:yellow;">如有不满，请多见谅。希望您提出您的宝贵意见：</h4></label>
				<textarea class="form-control" rows="8"></textarea>
			</div>
			<button type="button" class="btn btn-primary" 
    			data-toggle="button" style="position:absolute;right:0px;"> 提交
			</button>
			</form>	
		</div>
		
		<div style="position:absolute;top:90%;right:25%;background-color:;">
		<h4>
		负责联系人：王先生
		</br>
		电子邮箱：www.1291753596@qq.com
		</h4>
		</div>
		</div>
		
		<!-- 小屏屏幕显示 -->
		<div class="hidden-lg hidden-md">
		<div id="textbox" style="position:absolute;top:20%;left:2%;right:2%;">
			<form role="form">
			<div class="form-group">
				<label for="name" style=""><h4 style="background-color:yellow;">如有不满，请多见谅。希望您提出您的宝贵意见：</h4></label>
				<textarea class="form-control" rows="8"></textarea>
			</div>
			<button type="button" class="btn btn-primary" 
    			data-toggle="button" style="position:absolute;right:0px;"> 提交
			</button>
			</form>	
		</div>
		
		<div style="position:absolute;top:80%;left:10%;">
		<h4>
		负责联系人：王先生
		</br>
		电子邮箱：www.1291753596@qq.com
		</h4>
		</div>
		</div>
	</body>
</html>
