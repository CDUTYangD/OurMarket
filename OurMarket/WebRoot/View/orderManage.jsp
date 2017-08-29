<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
<head>
<title>订单管理</title>
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
<link rel="stylesheet" type="text/css" href="../css/Message.css" />
<link rel="stylesheet" type="text/css" href="../css/bought.css"/>
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
		<div class="container-fluid">
				<!--流动的容器-->
				<div class="row">
					<!--这是CSS的自定义样式-->
					<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
					<!--sidebar  边栏-->
					<ul class="nav nav-sidebar">
					<!--这是列表组-->
						<li ><a href="bought.jsp">已买到宝贝</a></li>
						<li><a href="uncollected.jsp">未收款宝贝</a></li>
						<li><a href="shelvedGoods.jsp">已上架宝贝</a></li>
						<li><a href="footmark.jsp">足迹宝贝</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="refundManage.jsp">退款管理</a></li>
						<li><a href="goodsManages.jsp">物品管理</a></li>
						<li class="active">
							<a href="ordermanage.jsp">订单管理&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">3</span></a>
						</li>
						<li><a href="Appraise.jsp">我的评价</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<li><a href="propertyCenter.jsp">资产中心</a></li>
					</ul>
					</div>
				</div>
		</div>
		<div class="col-sm-10  col-sm-offset-3 col-md-10 col-md-offset-2 col-xs-12">
			<div class="hidden-xs 	" style="width: 100%;">
				<div id="orderbox1" style="background-color: ;overflow: hidden;">
					<h3 class="page-header" style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 10px;
   					 margin-right: 0px;margin-bottom: 20px;margin-left: 0px;border-bottom: 1px solid #eee">物品信息</h3>
					<div id="picture1" style="float: left;width: 50%;background-color: ;">
						<br />
						<img src="../img/desk.jpg"  style="float: right;width: 300px;height: 250px;border: 3px dashed black;"/>
					</div>
					<div id="text1" style="float: right;width: 47%;background-color: ;">
						<div id="text1style" style="font-size: x-large;font-family: 楷体;font-weight: bold;">
							<br />
							<br />
							<li>商品名称:<u>华硕笔记本</u></li>
							<li>单价:<u>4999.00RMB</u></li>
							<li>数量:<u>2</u></li>
							<li>合计:<u>9998.00RMB</u></li>
						</div>
					</div >
				</div>
				<div id="orderbox2" style="background-color: ;width: 100%;">
				    <h3 class="page-header" style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 10px;
   					 margin-right: 0px;margin-bottom: 20px;margin-left: 0px;border-bottom: 1px solid #eee">订单信息</h3>
					<div id="text2" style="padding-left:70px;width: 50%;background-color: ;margin: 0px auto;">
						<div id="text2style" style="font-size: x-large;font-weight: bold;font-family: 楷体;">
							<li>订单号:<u>58487915</u></li>
							<li>创建时间:<u>2017/06/05</u></li>
							<li>用户名:<u>一纸生平</u></li>
							<li>联系电话:<u>13985462598</u></li>
							<li>联系QQ:<u>129874568</u></li>
						</div>
					</div>
					<div style="text-align: center;">
						<br />
						<br />
						<button type="button" class="btn btn-success">确认发货</button>
					</div>
				</div>
			</div>
			<!--在手机上显示-->
			<div class="hidden-lg hidden-md hidden-sm  	" style="width: 100%;">
				<div id="telpicture" style="text-align: center;overflow: hidden;">
					<br />
					<img src="img/desk.jpg"  style="height: 200px;height: 250px;border: 3px dashed black;"/>
				</div>
				
					<div id="teltext1" style="background-color: ;margin: 0px auto;width: 80%;">
						<div id="teltext1style" style="padding-left:20px;font-size: large;font-weight: bold;font-family: 楷体;">
							<h4 class="page-header"style="padding-bottom: 9px;margin: 10px 0 20px;margin-top: 10px;
   					 margin-right: 0px;margin-bottom: 20px;margin-left: 0px;border-bottom: 1px solid #eee">订单详情</h4>
							<li>商品名称:<u>华硕笔记本</u></li>
							<li>单价:<u>4999.00RMB</u></li>
							<li>数量:<u>2</u></li>
							<li>合计:<u>9998.00RMB</u></li>
							<li>订单号:<u>58487915</u></li>
							<li>创建时间:<u>2017/06/05</u></li>
							<li>用户名:<u>一纸生平</u></li>
							<li>联系电话:<u>13985462598</u></li>
							<li>联系QQ:<u>129874568</u></li>
							
						</div>
					</div>
					
					<div style="text-align: center;">
						<br />
						<br />
						<button onclick="window.location.href='orderManage.jsp'" type="button" class="btn btn-success">确认发货</button>
					</div>
			</div>
		</div>
  </body>
</html>
