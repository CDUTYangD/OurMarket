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
<title>圈子商品</title>
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

	function pp() {
		var pic = document.getElementById("xiangXi");
		pic.style.display = "block";


	}

	function pp1() {
		var pic = document.getElementById("xiangXi");
		pic.style.display = "none";

	}
</script>
</head>

<body>
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
				<li><a href="home.jsp">首页</a></li>
				<li><a href="http://localhost:8080/OurMarket/View/Message.jsp">消息</a></li>
				<li><a href="personalZoom">个人中心</a></li>
				<li><a href="service">客服</a></li>
				<li><a onclick="Logout()">登出</a></li>
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
					<li><a href="bought">已买到宝贝</a></li>
					<li><a href="uncollected">未收款宝贝</a></li>
					<li><a href="shelved">已上架宝贝</a></li>
					<li class="active"><a href="orderManage">圈子商品&nbsp;&nbsp;&nbsp;&nbsp;<span
							class="badge"></span></a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="refundManage">退款管理</a></li>
					<li><a href="goodsManages">订单管理</a></li>
					<li><a href="Appraise">我的评价</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="propertyCenter">资产中心</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		class="col-sm-10  col-sm-offset-3 col-md-10 col-md-offset-2 col-xs-12">
		<div class="hidden-xs 	" style="width: 100%;">


			<div id="orderbox1"
				style="background-color: ;overflow: hidden;text-align:left">
				<h3 class="page-header"
					style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 10px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">银杏圈子</h3>
				<div>
					<div style="float:left">
						<c:forEach items="${yxCircleGoodsInfo}" var="yxGoodsInfo">
							<img alt="" src="${yxGoodsInfo.getImagesrc() }"
								style="width:100px; height:100px;margin-left: 80px;">
								<a href="goodsDetail?Gid=${yxGoodsInfo.getGid() }">
							<label style="float:center">${yxGoodsInfo.getName() }</label>
							</a>
						</c:forEach>
					</div>
				</div>
				<button onclick="pp()" type="button" class="btn btn-default"
					style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
			</div>
			<div id="orderbox1" style="background-color: ;overflow: hidden;">
				<h3 class="page-header"
					style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 30px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">芙蓉圈子</h3>
				<div>
					<div style="float:left">
						<c:forEach items="${frCircleGoodsInfo}" var="frGoodsInfo">
							<img alt="" src="${frGoodsInfo.getImagesrc() }"
								style="width:100px; height:100px;margin-left:  80px;">
								<a href="goodsDetail?Gid=${frGoodsInfo.getGid() }">
							<label style="float:center">${frGoodsInfo.getName() }</label>
							</a>
						</c:forEach>
					</div>
				</div>
				<button onclick="pp()" type="button" class="btn btn-default"
					style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
			</div>

			<div id="orderbox1" style="background-color: ;overflow: hidden;">
				<h3 class="page-header"
					style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 30px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">松林圈子</h3>
				<div>
					<div style="float:left">
						<c:forEach items="${slCircleGoodsInfo}" var="slGoodsInfo">
							<img alt="" src="${slGoodsInfo.getImagesrc() }"
								style="width:100px; height:100px;margin-left:  80px;">
								<a href="goodsDetail?Gid=${slGoodsInfo.getGid() }">
							<label style="float:center">${slGoodsInfo.getName() }</label>
							</a>
						</c:forEach>
					</div>
				</div>
				<button onclick="pp()" type="button" class="btn btn-default"
					style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
			</div>
		</div>

		<div id="orderbox1" style="background-color: ;overflow: hidden;">
			<h3 class="page-header"
				style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 30px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">珙桐圈子</h3>
			<div>
				<div style="float:left">
					<c:forEach items="${gtCircleGoodsInfo}" var="gtGoodsInfo">
						<img alt="" src="${gtGoodsInfo.getImagesrc() }"
							style="width:100px; height:100px;margin-left:  80px;">
							<a href="goodsDetail?Gid=${gtGoodsInfo.getGid() }">
						<label style="float:center">${gtGoodsInfo.getName() }</label>
						</a>
					</c:forEach>
				</div>
			</div>
			<button onclick="pp()" type="button" class="btn btn-default"
				style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
		</div>

		<div id="orderbox1" style="background-color: ;overflow: hidden;">
			<h3 class="page-header"
				style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 30px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">香樟圈子</h3>
			<div>
				<div style="float:left">
					<c:forEach items="${xzCircleGoodsInfo}" var="xzGoodsInfo">
						<img alt="" src="${xzGoodsInfo.getImagesrc() }"
							style="width:100px; height:100px;margin-left:  80px;">
							<a href="goodsDetail?Gid=${xzGoodsInfo.getGid() }">
						<label style="float:center">${xzGoodsInfo.getName() }</label>
						</a>
					</c:forEach>
				</div>
			</div>
			<button onclick="pp()" type="button" class="btn btn-default"
				style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
		</div>

		<div id="orderbox1" style="background-color: ;overflow: hidden;">
			<h3 class="page-header"
				style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 30px;
   					 margin-right: 0px;margin-bottom: 10px;margin-left: 0px;border-bottom: 1px solid #eee">北苑圈子</h3>
			<div>
				<div style="float:left">
					<c:forEach items="${byCircleGoodsInfo}" var="byGoodsInfo">
						<img alt="" src="${byGoodsInfo.getImagesrc() }"
							style="width:100px; height:100px;margin-left:  80px;">
						<a href="goodsDetail?Gid=${byGoodsInfo.getGid() }">
						<label style="float:center">${byGoodsInfo.getName() }</label>
						</a>
					</c:forEach>
				</div>
			</div>
			<button onclick="pp()" type="button" class="btn btn-default"
				style="width:300px;margin-top: 10px; margin-left:200px;">查看更多</button>
		</div>

	</div>

	<div id="xiangXi" class="panel panel-default"
		style=" position: absolute; z-index:999;left:70%; height:90%;width:40%;display:none; margin-top: 40px;">
		<div class="panel-body">圈子内详细商品</div>

		<div style="margin-top: 30px;">
			<div style="float:left">
				<img alt=""
					src="http://localhost:8080/OurMarket/img/5900049bN90cf8936.jpg"
					style="width:100px; height:100px;margin-left:0px;"> <label
					style="float:center">手机</label>
			</div>
			<div style="float:left">
				<img alt="" src="http://localhost:8080/OurMarket/img/goods2.jpg"
					style="width:100px; height:100px;margin-left:  80px;"> <label
					style="float:center">手机</label>
			</div>
			<img alt="" src="http://localhost:8080/OurMarket/img/huaweip10.jpg"
				style="width:100px; height:100px;margin-left: 80px;"> <label
				style="float:center">手机</label>
		</div>


		<div style="margin-top: 30px;">
			<div style="float:left">
				<img alt=""
					src="http://localhost:8080/OurMarket/img/5900049bN90cf8936.jpg"
					style="width:100px; height:100px;margin-left:0px;"> <label
					style="float:center">手机</label>
			</div>
			<div style="float:left">
				<img alt="" src="http://localhost:8080/OurMarket/img/goods2.jpg"
					style="width:100px; height:100px;margin-left:  80px;"> <label
					style="float:center">手机</label>
			</div>
			<img alt="" src="http://localhost:8080/OurMarket/img/huaweip10.jpg"
				style="width:100px; height:100px;margin-left: 80px;"> <label
				style="float:center">手机</label>
		</div>


		<div style="margin-top: 30px;">
			<div style="float:left">
				<img alt=""
					src="http://localhost:8080/OurMarket/img/5900049bN90cf8936.jpg"
					style="width:100px; height:100px;margin-left:0px;"> <label
					style="float:center">手机</label>
			</div>
			<div style="float:left">
				<img alt="" src="http://localhost:8080/OurMarket/img/goods2.jpg"
					style="width:100px; height:100px;margin-left:  80px;"> <label
					style="float:center">手机</label>
			</div>
			<img alt="" src="http://localhost:8080/OurMarket/img/huaweip10.jpg"
				style="width:100px; height:100px;margin-left: 80px;"> <label
				style="float:center">手机</label>
		</div>
		<button onclick="pp1()" type="button" class="btn btn-default"
			style="width:300px;margin-top: 50px; margin-left:200px;">隐藏</button>
	</div>



</body>
</html>
