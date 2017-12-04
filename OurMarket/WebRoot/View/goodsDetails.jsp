<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/Logout.js"></script>

<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/dashboard.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/carousel.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/Message.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/bought.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/font-awesome.css" />
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
<style>
li {
	padding: 5px;
	letter-spacing: 5px;
}
</style>
</head>
<body style="background:#eff7ff;">
	<!--这是位于最上方的可以伸缩的菜单栏，宽度充满屏幕，悬浮在最顶上-->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
	<div class="container-fluid">
		<!--流动的容器-->
		<div class="navbar-header">
			<button id="button_show_left" type="button"
				class="navbar-toggle collapsed" style="float:left;margin-left:15px;"
				data-toggle="collapse" data-target="#navbar-left"
				aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!--这是按钮  缩放按钮-->
			<button id="button_show_right" type="button"
				class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#navbar-right" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
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
				<li><a href="http://localhost:8080/OurMarket/home">首页</a></li>
				<li><a href="http://localhost:8080/OurMarket/privateMessage">消息</a></li>
				<li><a
					href="http://localhost:8080/OurMarket/View/personalZoom">个人中心</a></li>
				<li><a href="http://localhost:8080/OurMarket/View/service">客服</a></li>
				<li><a onclick="Logout()">登出</a></li>
			</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>
	</div>
	</nav>
	<div class="content"
		style="height: 550px;margin:30px ;margin-bottom: 0px;">
		<!--商品图片-->
		<div class="col-md-8" style="height: 500px;border:1px solid  #E0E0E0;">
			<img src="${GoodDetail.getImagesrc()}" class="img"
				style="width: 400px;height: 494px;margin-left: 200px;display: inline;" />
		</div>
		<!--商品信息-->
		<div class="col-md-4 " style="height: 550px;font-size: 18px;">
			<h2>
				<strong>${GoodDetail.getName()}</strong>
			</h2>
			<ul class="list-unstyled">
				<li><span>价格：</span> <span class="price"><i
						class="fa fa-rmb">&nbsp;</i>${GoodDetail.getPrice()}</span></li>
			</ul>
			<hr />
			<ul class="list-unstyled" style="color: black;">
				<li><span>商品成色：</span> <span>全新</span></li>
				<li><span>所在圈子：</span> <span>${GoodDetail.getLocation()}</span></li>
				<li><span>联系电话：</span> <span>${GoodDetail.getPhoneNum()}</span></li>
				<li><span>交易方式：</span> <label
					style="letter-spacing: normal; font-size: 14px;color:#333333"><input
						type="radio" name="transaction" />线上</label> <label
					style="letter-spacing: normal; font-size: 14px;color:#333333"><input
						type="radio" name="transaction" />线下</label></li>
			</ul>
			<button class="btn btn-block btn-lg btn-warning"
				style="margin-top: 70px;">立即购买</button>
		</div>
	</div>
	<hr />

	<div class="col-md-7"
		style="margin-left:30px ;margin-right: 30px;border:1px solid  #E0E0E0;background:#eff7ff;">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active"><a href="#introduction" data-toggle="tab">宝贝介绍</a>
			</li>
			<li><a href="#apparise" data-toggle="tab">评价</a></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="introduction">
				<p>${GoodDetail.getIntroduce()}</p>
				<!-- 					<img src="../img/p10.jpg" / style="height: 400px;"> -->
			</div>

			<div class="tab-pane fade" id="apparise">
				<table class="table">
					<c:forEach items="${goodComments}" var="comment">
						<tr>
							<td>${comment.getCommentString() }</td>
							<td>${comment.getCommentTime() }</td>
							<td>${comment.getCommenterNameString() }</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>

	<div class="col-md-4"
		style="height: 450px;border: groove;	margin-top: 30px;">
		<p style="font-size: 25px;color: black;margin-top: 10px;">
			卖家的其他物品 <a href="#" style="float: right;color: gold;font-size: 15px;">更多</a>
		</p>

		<c:forEach items="${OhterGoods}" var="otherGood">
			<div class="col-md-6" style="padding-bottom:15px;">

				<img src="${otherGood.getImagesrc()}" height="100px" width="100px"
					style="float: left;" />
				<div style="float: right;width: 76px;">
					<p>
						<a href="goodsDetail?Gid=${otherGood.getGid() }" style="color: black;">${otherGood.getName()}</a>
					</p>
					<p>
						<i class="fa fa-rmb">&nbsp;</i><span style="color: orangered;">${otherGood.getPrice()}</span>
					</p>
				</div>

			</div>
		</c:forEach>

	</div>
</body>

</html>
