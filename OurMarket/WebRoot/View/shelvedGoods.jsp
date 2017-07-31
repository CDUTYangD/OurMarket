<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>已上架的宝贝</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/Logout.js"></script>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/dashboard.css" />
<link rel="stylesheet" type="text/css" href="css/carousel.css" />
<link rel="stylesheet" type="text/css" href="css/Message.css" />
<link rel="stylesheet" type="text/css" href="css/bought.css"/>
<link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
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
					<li><a href="homepage.html">首页</a></li>
					<li><a href="Message.html">消息</a></li>
					<li><a href="personalzoom.html">个人中心</a></li>
					<li><a href="Service.html">客服</a></li>
					<li><a onclick="Logout()" >登出</a></li>
					
				</ul>
				<form class="navbar-form navbar-right">
					<input type="text" class="form-control" placeholder="Search...">
				</form>
			
			</div>
		</div>
		</nav>
		
		<div class="container-fluid">
				<!--流动的容器-->
				<div class="row">
					<!--这是CSS的自定义样式-->
					<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
						<!--sidebar  边栏-->
						<ul class="nav nav-sidebar">
							<!--这是列表组-->
							<li><a href="bought.html">已买到宝贝</a></li>
							<li><a href="uncollected.html">未收款宝贝</a></li>
							<li class="active"><a href="shelved.html">已上架宝贝</a></li>
							<li><a href="footmark.html">足迹宝贝</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li><a href="refundmanage.html">退款管理</a></li>
							<li><a href="GOODmanages.html">物品管理</a></li>
							<li><a href="ordermanage.html">订单管理</a></li>
							<li><a href="Appraise.html">我的评价</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li><a href="propertycenter.html">资产中心</a></li>
						</ul>
					</div>
				</div>
		</div>

		<!--导航栏右侧部分-->
		<div class="col-sm-10  col-sm-offset-3 col-md-10 col-md-offset-2 col-xs-12">
		  <!--搜索框-->
			  <div style="padding-bottom: 50px;padding-top: 10px;">  
	  			<input type="text" class="form-control" style="float: left;right;width: 200px" / >
	  			<button class="btn btn-info btn-search" style="float:left;margin-left:3px">搜索 </button>
			  </div>  
	          <div class="row img-responsive">
	            <div class="col-xs-6 col-lg-4" style="">
	              <img src="img/5900049bN90cf8936.jpg" style="width: 200px;height=200px"/>
	              <div style=";">
		              <p class="goodsname">华硕笔记本zx50</p>
		              <p class="goodsprice">价格：5000.00RMB</p>
		              <p class="goodsnum">余量：10</p>   
		              <button type="button" class="btn btn-info" >我要下架</button>
		              <p>&nbsp;</p>	
	              </div>
	            </div>
	            <div class="col-xs-6 col-lg-4">
	              <img src="img/huaweip10.jpg" style="width: 200px;height=200px"/>
	              <p class="goodsname">华为手机P10</p>
	              <p class="goodsprice">价格：2700.00RMB</p>
	              <p class="goodsnum">余量：10</p>
	              <button type="button" class="btn btn-info">我要下架</button>
	               <p>&nbsp;</p>
	            </div>
	            <div class="col-xs-6 col-lg-4">
	            <img src="img/oppor11.jpg" style="width: 200px;height=200px"/>  
	           	  <p class="goodsname">OPPO手机R11</p>
	              <p class="goodsprice">价格：1500.00RMB</p>
	              <p class="goodsnum">余量：10</p>
	              <button type="button" class="btn btn-info">我要下架</button>
	               <p>&nbsp;</p>
	            </div>
	            <div class="col-xs-6 col-lg-4">
	              <img src="img/desk.jpg" style="width: 200px;height=200px"/>
					<p class="goodsname">书桌</p>
					<p class="goodsprice">价格:100RMB</p>
					<p class="goodsnum">余量:20</p>
					<button type="button" class="btn btn-info">我要下架</button>
					 <p>&nbsp;</p>
	            </div>
	            <div class="col-xs-6 col-lg-4">
	              <img src="img/backpack.jpg" style="width: 200px;height=200px"/>
	              <p class="goodsname">书包</p>
					<p class="goodsprice">价格:80RMB</p>
					<p class="goodsnum">余量:20</p>
					<button type="button" class="btn btn-info">我要下架</button>
					 <p>&nbsp;</p>
	            </div>
	            <div class="col-xs-6 col-lg-4">
	              <img src="img/shoes.jpg" style="width: 200px;height=200px"/>
	                <p class="goodsname">耐克鞋</p>
					<p class="goodsprice">价格:350RMB</p>
					<p class="goodsnum">余量:20</p>
					<button type="button" class="btn btn-info">我要下架</button>
					 <p>&nbsp;</p>
	            </div>
	          </div>
		</div>
</body>
</html>