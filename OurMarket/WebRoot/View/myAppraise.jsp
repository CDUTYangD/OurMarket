<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>我的评价</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/Logout.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/dashboard.css" />
<link rel="stylesheet" type="text/css" href="../css/carousel.css" />

<link rel="stylesheet" type="text/css" href="../css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="../css/Message.css" />
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
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
<!--navbar-inverse 表示带反色（黑色背景，白色文字）的导航栏，navbar-fixed-top 表示 一直停留在顶部  添加 role="navigation"，有助于增加可访问性-->
<div class="container-fluid">
	<!--流动的容器-->
	<div class="navbar-header">
		<button id="button_show_left" type="button" class="navbar-toggle collapsed" 
			style="float:left;margin-left:15px;"
			data-toggle="collapse" data-target="#navbar-middle" 
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
		<!--左侧导航栏-->
		<div class="row">
			<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
			<!--sidebar  边栏-->
			<ul class="nav nav-sidebar">
				<!--这是列表组-->
				<li ><a href="bought.html">已买到宝贝</a></li>
				<li><a href="uncollected.html">未收款宝贝</a></li>
				<li><a href="shelved.html">已上架宝贝</a></li>
				<li><a href="footmark.html">足迹宝贝</a></li>
			</ul>
			<ul class="nav nav-sidebar">
				<li><a href="refundmanage.html">退款管理</a></li>
				<li><a href="GOODmanages.html">物品管理</a></li>
				<li><a href="ordermanage.html">订单管理</a></li>
				<li class="active"><a href="Appraise.html">我的评价</a></li>
			</ul>
			<ul class="nav nav-sidebar">
				<li><a href="propertycenter.html">资产中心</a></li>
			</ul>
			</div>
			
			<div   class="col-sm-9 col-md-10 col-md-offset-2  col-sm-offset-3 main" >
				<!--大屏设备显示-->
				<div style="background-color: ;overflow: hidden;" class="hidden-xs">
					<div style="float: left;width: 40%;background-color: ;">
						<img src="img/huaweip10.jpg" style="width: 80%;"/>
					</div>
					
					<div style="float: right;width: 50%;background-color: ;">
						<ul style="list-style-type: none;">
							<br />
							<li><h3><b>徕卡人像摄影手机华为P10</b></h3></li>
							<br />
							<li> <label>价格</label> <div style="margin-left: 70px;">2000.00元</div></li>
							<li> <label>数量</label> <div style="margin-left: 70px;">*2</div></li>
							<li> <label>合计</label> <div style="margin-left: 70px;">4000.00元</div></li>
							
						</ul>
					</div>
				</div>
				
				<!--小屏设备显示-->
				<div class="hidden-lg hidden-md hidden-sm" style="text-align: center;">
					<div style="margin-left: 10px;height: 30%;background-color: ;overflow: hidden;">
						<div style="float: left;width: 30%;">
							<br />
							<img src="img/5900049bN90cf8936.jpg" style="height: 100%;width: 100%;" />
						</div>
						
						<div style="float: right;width: 70%; text-align: left;">
							<br />
							<ul style="list-style-type: none;">
								<li><h5><b>徕卡人像摄影手机华为P10</b></h5></li>
								<li>
									 <label>价格</label> 
									<div style="float: right;">2000.00元</div>
								</li>
								<li>
									 <label>数量</label> 
									<div style="float: right;">*2</div>
								</li>
								<li>
									<label>合计</label> 
									<div style="float: right;">4000.00元</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!--大屏显示-->
				<div class="hidden-xs">
					<div style="float: left;width: 50%;">
						<form role="form">
  							<div class="form-group">
  								<br />
   							    <label for="name">我的评价</label>
   								<textarea class="form-control" rows="7" placeholder="你可以输入500字"></textarea>
  							</div>
						</form>
					</div>
					
					<div style="float: right;width: 50%;">
						<ul style="list-style-type: none;">
							<br />
							<br />
							<li><label>商品的符合程度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<span>
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
													
								</span>
							</li>
							<br />
							<li><label>卖家的服务态度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
											
							</li>
							<br />
							<br />
							<br />
							<button id="specifiappraise" type="button" class="btn btn-success">提交</button>
						</ul>
						
					</div>
				</div>
				<!--小屏显示-->
				<div class="hidden-md hidden-lg hidden-sm">
					<div style="background-color: ;overflow: hidden;">
					<ul style="list-style-type: none;">
							<br />
							<br />
							<li><label>商品的符合程度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<span>
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
									<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
													
								</span>
							</li>
							<br />
							<li><label>卖家的服务态度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
								<img src="img/xingxing.jpg" style="width: 17px;height: 17px;">
											
							</li>
							
						</ul>
					</div>	
					
					<div style="padding-left: 10px;padding-right: 10px;">
						<form role="form">
  							<div class="form-group">
  								<br />
   							    <label for="name">我的评价</label>
   								<textarea class="form-control" rows="5" placeholder="你可以输入500字"></textarea>
  							</div>
						</form>
						<button id="specifiappraise" type="button" class="btn btn-success"
							style="float: right;">提交</button>
					</div>
					
				</div>
			</div>
		</div>
</div>
</body>
<script type="text/javascript">
	var a=document.getElementById("specifiappraise");
	a.onclick=function(){
		if(confirm("是否提交"))
		{
			location.href="Appraise.html";
		}
		else{
			
		}
	}
</script>
</html>