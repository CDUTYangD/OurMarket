<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>个人中心</title>
    </head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/carousel.css" />
<link rel="stylesheet" href="../css/dashboard.css" />

</head>

<body>
	<!--这是位于最上方的可以伸缩的菜单栏，宽度充满屏幕，悬浮在最顶上-->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
	<div class="container-fluid">
		<!--流动的容器-->
		<div class="navbar-header">
			<!--这是按钮  缩放按钮-->
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
      <!--主界面-->
      <div  class="container-fluid">
      	<div class="row">
      		<div id ="blank_left" class="col-xs-1 col-sm-2 col-md-2 col-lg-2 ">
      		</div>
      		<div id="menu" class=" col-xs-10 col-sm-8 col-md-8 col-lg-8 "style="background-color: ; " >
      			<h1 class="page-header">个人信息</h1>
      			<div class="col-sm-8 col-md-8 col-lg-8" style="background-color: ;text-align: left;">
      				
    			<label for="name">用户名：</label>
    			<input type="text" class="form-control" id="name" placeholder="">
   					<p>&nbsp;</p>
       			<label for="name">登陆账号：</label>
    			<input type="text" class="form-control" id="name" placeholder="">
    				<p>&nbsp;</p>
    		    <label for="name">电子邮箱：</label>
  				<input type="text" class="form-control" id="name" placeholder="">
  					<p>&nbsp;</p>
  				<label for="name">QQ：</label>
  				<input type="text" class="form-control" id="name" placeholder="">
  					<p>&nbsp;</p>
  				<label for="name">联系电话：</label>
  				<input type="text" class="form-control" id="name" placeholder="">
  					<p>&nbsp;</p>
  						
  				<button type="submit" id ="submit" class="btn btn-default">提交</button>
  				<button type="submit" id="changepassword" class="btn btn-default"style=";">修改密码</button>
      			</div>
      			<div class="col-sm-4 col-md-4 col-lg-4 " style="background-color: ;">
					 <img src="../img/erhuo.png" />
      			</div>
      		</div>
      		<div id="blank_right" class="col-xs-1 col-sm-2 col-md-2 col-lg-2 " >
      			
      		</div>
      	</div>
      </div>
</body>
<script type="text/javascript">
	var a=document.getElementById("submit");
	a.onclick=function(){
		if(confirm("是否提交？"))
		{
			location.href="personalzoom.html";
		}
		else{
			
		}
	}
	
	var b=document.getElementById("changepassword");
	b.onclick=function(){
		location.href="changepassword.html";
	}
	
</script>

</html>