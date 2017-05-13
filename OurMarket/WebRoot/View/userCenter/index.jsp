<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>OurMarkets</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="/OurMarket/js/jquery.min.js"></script>
<script src="/OurMarket/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/OurMarket/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/OurMarket/css/dashboard.css" />
<link rel="stylesheet" type="text/css"
	href="/OurMarket/css/carousel.css" />
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
			<button id="button_show_left" type="button" class="navbar-toggle collapsed" style="float:left;margin-left:15px;"
				data-toggle="collapse" data-target="#navbar-left" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
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
				<li><a href="#">首页</a></li>
				<li><a href="#">客服</a></li>
				<li><a href="#">消息</a></li>
				<li><a href="#">个人中心</a></li>
				<li><a href="#">客服</a></li>
				<li><a href="#">登出</a></li>
			</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>

	</div>
	</nav>


	<!--大界面-->
	<div class="container-fluid">
		<!--流动的容器-->
		<div class="row">
			<!--这是CSS的自定义样式-->
			<div id="navbar-left" class="col-sm-3 col-md-2 sidebar">
				<!--sidebar  边栏-->
				<ul class="nav nav-sidebar">
					<!--这是列表组-->
					<li class="active"><a href="#">已收款宝贝</a></li>
					<li><a href="#">未收款宝贝</a></li>
					<li><a href="#">已上架宝贝</a></li>
					<li><a href="#">已下架宝贝</a></li>
					<li><a href="#">足迹宝贝</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="#">退款管理</a></li>
					<li><a href="">我的评价</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="#">资产中心</a></li>
				</ul>
			</div>
			<!--列表组到这里完成-->


			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">hello</h1>
				<!--这是下划线-->

				<!--这是轮播框-->
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->

					<!--这是轮播指标-->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1" class=""></li>
						<li data-target="#myCarousel" data-slide-to="2" class=""></li>
					</ol>
					<!--意思就是图片下面的几个小圆点-->


					<div class="carousel-inner" role="listbox">
						<!--第一页-->
						<div class="item active">
							<img
								src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
								alt="First slide">
							<!--图片添加区域-->
							<div class="container">
								<!--定义个容器-->
								<div class="carousel-caption">
									<!--这是轮播的弹幕-->
									hello
								</div>
							</div>
						</div>
						<!--第二页-->
						<div class="item">
							<img
								src="data:image/gif;base64,R0lGODlhAQABAIAAAGZmZgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
								alt="Second slide">
							<!--图片加载区-->
							<div class="container">
								<!--定义的一个容器-->
								<div class="carousel-caption">
									<!--这是轮播的弹幕-->
									你好棒啊
								</div>
							</div>
						</div>

						<!--第三页-->
						<div class="item">
							<img
								src="data:image/gif;base64,R0lGODlhAQABAIAAAFVVVQAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
								alt="Third slide">
							<!--图片加载区-->
							<div class="container">
								<!--定义的一个容器-->
								<div class="carousel-caption">
									<!--这是轮播的弹幕-->
									还是你比较棒
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--这是下划线-->


				<h2 class="sub-header">我的订单</h2>
				<!--这是下划线-->

				<!--这是表单-->
				<table class="table table-bordered">
					<!--colspan  合并表格-->
					<thead>
						<tr>
							<th>商品名称</th>
							<th>交易数量</th>
							<th>交易总额</th>
							<th>交易时间</th>
							<th>交易状态</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<td>可口可乐</td>
							<td>6</td>
							<td>18.00</td>
							<td>2016-05-12</td>
							<td><a href="#">已完成</a></td>
						</tr>

						<tr>
							<td>电脑</td>
							<td>1</td>
							<td>1800</td>
							<td>2016-05-12</td>
							<td><a href="#">待付款</a></td>
						</tr>
						<tr>
							<td>手机</td>
							<td>1</td>
							<td>1900</td>
							<td>2016-05-12</td>
							<td><a href="#">待收货</a></td>
						</tr>
						<tr>
							<td>平板</td>
							<td>1</td>
							<td>1500</td>
							<td>2016-05-12</td>
							<td><a href="#">已取消</a></td>
						</tr>
						<tr>
							<td>耳机</td>
							<td>1</td>
							<td>58</td>
							<td>2016-05-12</td>
							<td><a href="#">待收货</a></td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>
