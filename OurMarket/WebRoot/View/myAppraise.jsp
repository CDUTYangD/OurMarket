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
<title>我的评价</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/Logout.js"></script>
<script src="//cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/dashboard.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/carousel.css" />

<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/Message.css" />
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
.block li label, .con span {
	font-size: 18px;
	margin-right: 20px;
	line-height: 23px;
}

.block li span {
	display: inline-block;
	vertical-align: middle;
	cursor: pointer;
}

.block li span img {
	margin-right: -5px;
}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
	<div class="container-fluid">
		<!--流动的容器-->
		<div class="navbar-header">
			<button id="button_show_left" type="button"
				class="navbar-toggle collapsed" style="float:left;margin-left:15px;"
				data-toggle="collapse" data-target="#navbar-middle"
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
				<li><a href="home">首页</a></li>
				<li><a href="http://localhost:8080/OurMarket/privateMessage">消息</a></li>
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
		<!--左侧导航栏-->
		<div class="row">
			<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
				<!--sidebar  边栏-->
				<ul class="nav nav-sidebar">
					<!--这是列表组-->
					<li><a href="bought">已买到宝贝</a></li>
					<li><a href="uncollected">未收款宝贝</a></li>
					<li><a href="shelvedGoods">已上架宝贝</a></li>
					<li><a href="footmark">足迹宝贝</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="refundManage">退款管理</a></li>
					<li><a href="goodsManages">物品管理</a></li>
					<li><a href="orderManage">订单管理&nbsp;&nbsp;&nbsp;&nbsp;<span
							class="badge">3</span></a></li>
					<li class="active"><a href="Appraise">我的评价</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="propertyCenter">资产中心</a></li>
				</ul>
			</div>
			<c:forEach items="${myappraise}" var="comment">
				<div
					class="col-sm-9 col-md-10 col-md-offset-2  col-sm-offset-3 main">
					<!--大屏设备显示-->
					<div style="background-color: ;overflow: hidden;" class="hidden-xs">
						<div style="float: left;width: 40%;background-color: ;">
							<img src="${comment.getGoodImg() }" style="width: 80%;" />
						</div>

						<div style="float: right;width: 50%;background-color: ;">
							<ul style="list-style-type: none;">
								<br />
								<li><h3>
										<b>${comment.getGoodName() }</b>
									</h3></li>
								<br />
								<li><label>价格</label>
									<div style="margin-left: 70px;">${comment.getGoodPrice() }元</div></li>
								<li><label>数量</label>
									<div style="margin-left: 70px;">*${comment.getGoodNum() }</div></li>
								<li><label>合计</label>
									<div style="margin-left: 70px;">${comment.getGoodNum() * comment.getGoodPrice()}元</div></li>

							</ul>
						</div>
					</div>
					<!--小屏设备显示-->
					<div class="hidden-lg hidden-md hidden-sm"
						style="text-align: center;">
						<div
							style="margin-left: 10px;height: 30%;background-color: ;overflow: hidden;">
							<div style="float: left;width: 30%;">
								<br /> <img src="${comment.getGoodImg() }"
									style="height: 100%;width: 100%;" />
							</div>

							<div style="float: right;width: 70%; text-align: left;">
								<br />
								<ul style="list-style-type: none;">
									<li><h5>
											<b>${comment.getGoodName() }</b>
										</h5></li>
									<li><label>价格</label>
										<div style="float: right;">${comment.getGoodPrice() }</div></li>
									<li><label>数量</label>
										<div style="float: right;">*${comment.getGoodNum() }</div></li>
									<li><label>合计</label>
										<div style="float: right;">${comment.getGoodNum() * comment.getGoodPrice()}元</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!--大屏显示-->
					<form name="appriseForm" action="myAppraiseUp" method="post">
					<input type="hidden" name="oID" value="${comment.getOid() }">
					<input type="hidden" name="gID" value="${comment.getGid() }">
						<div class="hidden-xs">
							<div style="float: left;width: 50%;">

								<div class="form-group">
									<br /> <label for="name">我的评价</label>
									<textarea class="form-control" rows="7" placeholder="你可以输入500字"
										name="commentsText"> </textarea>
								</div>

							</div>

							<div style="float: right;width: 50%;">
								<ul style="list-style-type: none;">
									<br />
									<br />
									<li><label>商品的符合程度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
										<div class="block">
											<ul>
												<li data-default-index="0"><span> <img
														src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
												</span> <em class="level"></em></li>
											</ul>
										</div></li>
									<br />
									<li><label>卖家的服务态度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
										<div class="block">
											<ul>
												<li data-default-index="0"><span> <img
														src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
												</span> <em class="level"></em></li>
											</ul>
										</div> <br /> <br /> <br />
								</ul>
							</div>
						</div>
						<button id="specifiappraise" type="submit" class="btn btn-success">提交</button>
					</form>
					<!--小屏显示-->
					<form name="appriseForm" action="myAppraiseUp" method="post">
					<input type="hidden" name="oID" value="${comment.getOid() }">
					<input type="hidden" name="gID" value="${comment.getGid() }">
						<div class="hidden-md hidden-lg hidden-sm">
							<div style="background-color: ;overflow: hidden;">
								<ul style="list-style-type: none;">
									<br />
									<br />
									<li><label>商品的符合程度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
										<div class="block">
											<ul>
												<li data-default-index="0"><span> <img
														src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
												</span> <em class="level"></em></li>
											</ul>
										</div></li>
									<br />
									<li><label>卖家的服务态度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
										<div class="block">
											<ul>
												<li data-default-index="0"><span> <img
														src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
														<img src="http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png">
												</span> <em class="level"></em></li>
											</ul>
										</div></li>

								</ul>
							</div>

							<div style="padding-left: 10px;padding-right: 10px;">
								<div class="form-group">
									<br /> <label for="name">我的评价</label>
									<textarea class="form-control" rows="5" placeholder="你可以输入500字"
										name="commentsText"></textarea>
								</div>
							</div>
						</div>
						<button id="specifiappraise" type="submit" class="btn btn-success"
							style="float: right;">提交</button>
					</form>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
<script type="text/javascript">
	var a = document.getElementById("specifiappraise");
	a.onclick = function() {
		if (confirm("是否提交")) {
			submit();
		} else {

		}
	}

	/*
	 * 根据index获取 str
	 * **/
	function byIndexLeve(index) {
		var str = "";
		switch (index) {
		case 0:
			str = "差评";
			break;
		case 1:
			str = "较差";
			break;
		case 2:
			str = "中等";
			break;
		case 3:
			str = "一般";
			break;
		case 4:
			str = "好评";
			break;
		}
		return str;
	}
	//  星星数量
	var stars = [
		[ 'x2.png', 'x1.png', 'x1.png', 'x1.png', 'x1.png' ],
		[ 'x2.png', 'x2.png', 'x1.png', 'x1.png', 'x1.png' ],
		[ 'x2.png', 'x2.png', 'x2.png', 'x1.png', 'x1.png' ],
		[ 'x2.png', 'x2.png', 'x2.png', 'x2.png', 'x1.png' ],
		[ 'x2.png', 'x2.png', 'x2.png', 'x2.png', 'x2.png' ],
	];
	$(".block li").find("img").hover(function(e) {
		var obj = $(this);
		var index = obj.index();
		if (index < (parseInt($(".block li").attr("data-default-index")) - 1)) {
			return;
		}
		var li = obj.closest("li");
		var star_area_index = li.index();
		for (var i = 0; i < 5; i++) {
			li.find("img").eq(i).attr("src", "http://7xnlea.com2.z0.glb.qiniucdn.com/" + stars[index][i]); //切换每个星星
		}
		$(".level").html(byIndexLeve(index));
	}, function() {})

	$(".block li").hover(function(e) {}, function() {
		var index = $(this).attr("data-default-index"); //点击后的索引
		index = parseInt(index);
		console.log("index", index);
		$(".level").html(byIndexLeve(index - 1));
		console.log(byIndexLeve(index - 1));
		$(".order-evaluation ul li:eq(0)").find("img").attr("src", "http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png");
		for (var i = 0; i < index; i++) {

			$(".order-evaluation ul li:eq(0)").find("img").eq(i).attr("src", "http://7xnlea.com2.z0.glb.qiniucdn.com/x2.png");
		}
	})
	$(".block li").find("img").click(function() {
		var obj = $(this);
		var li = obj.closest("li");
		var star_area_index = li.index();
		var index1 = obj.index();
		li.attr("data-default-index", (parseInt(index1) + 1));
		var index = $(".block li").attr("data-default-index"); //点击后的索引
		index = parseInt(index);
		console.log("index", index);
		$(".level").html(byIndexLeve(index - 1));
		console.log(byIndexLeve(index - 1));
		$(".order-evaluation ul li:eq(0)").find("img").attr("src", "http://7xnlea.com2.z0.glb.qiniucdn.com/x1.png");
		for (var i = 0; i < index; i++) {
			$(".order-evaluation ul li:eq(0)").find("img").eq(i).attr("src", "http://7xnlea.com2.z0.glb.qiniucdn.com/x2.png");
		}

	});
	//印象
	$(".order-evaluation-check").click(function() {
		if ($(this).hasClass('checked')) {
			//当前为选中状态，需要取消
			$(this).removeClass('checked');
		} else {
			//当前未选中，需要增加选中
			$(this).addClass('checked');
		}
	});
</script>
</script>
</html>