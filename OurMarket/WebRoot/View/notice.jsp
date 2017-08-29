<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head> 
<meta charset="UTF-8">
<title>通知</title>
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

<style>
	
</style>
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
			<li><a href="http://localhost:8080/OurMarket/home.jsp">首页</a></li>
			<li><a href="http://localhost:8080/OurMarket/View/Message.jsp">消息</a></li>
			<li><a href="http://localhost:8080/OurMarket/View/personalZoom.jsp">个人中心</a></li>
			<li><a href="http://localhost:8080/OurMarket/View/service.jsp">客服</a></li>
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
			<div id="navbar" class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<!--这是列表组-->
					<li ><a href="http://localhost:8080/OurMarket/View/bought.jsp">已买到宝贝</a></li>
					<li><a href="uncollected.jsp">未收款宝贝</a></li>
					<li><a href="http://localhost:8080/OurMarket/View/shelvedGoods.jsp">已上架宝贝</a></li>
					<li><a href="http://localhost:8080/OurMarket/View/footmark.jsp">足迹宝贝</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="http://localhost:8080/OurMarket/View/refundManage.jsp">退款管理</a></li>
					<li><a href="http://localhost:8080/OurMarket/View/goodsManages.jsp">物品管理</a></li>
					<li><a href="ordermanage.jsp">订单管理&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">3</span></a></li>
					<li><a href="http://localhost:8080/OurMarket/View/Appraise.jsp">我的评价</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="http://localhost:8080/OurMarket/View/propertyCenter.jsp">资产中心</a></li>
				</ul>
			</div>
		
			<div  class="col-sm-3 col-md-3 "></div>
			<!--中间导航栏-->
			<div  id="navbar-middle" class="col-sm-3 col-md-2  " >
				
				<ul class="list-unstyled" style="border:1px solid #96c2f1;background:#eff7ff; margin-top: 5px;">
					<li class="active"><a href="http://localhost:8080/OurMarket/View/Message.jsp"><i class="fa fa-comment fa-lg"></i>系统消息</a></li>
					<li ><a href="http://localhost:8080/OurMarket/View/privateMessage.jsp"><i class="fa fa-envelope-o fa-lg "></i>私信</a></li>
					<li><a  href="http://localhost:8080/OurMarket/View/notice.jsp"><i class="fa fa-bell fa-lg"></i>通知</a></li>
					<li><a href="http://localhost:8080/OurMarket/View/messageSettings.jsp"><i class="fa fa-cog fa-lg"></i>消息设置</a></li>
					<img src="../img/erhuo.png" width="150px" height="300px" class="hidden-xs"/>
				</ul>
			</div>

		<div   class="col-sm-5 col-md-5 " style="margin-top: 5px;padding: 0px; border:2px solid #bbe1f1;background:#eefaff">
			<!--通知框上方-->
			<div style="background-color: #D6E9C6; border-bottom:0.5px solid #bbe1f1;">
				<div style="padding-left: 20px;">
					<span style="font-size: large;font-weight: 700;line-height: 50px;">通知</span>	
				</div>
			</div>
			
			<!--通知框下方-->
			<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 0px;border-bottom:inset;">
				<div class="col-md-3 col-sm-4 col-xs-3" style="padding: 0px;">
					<a href="#"><img class=" avatar_" src="../img/5.png"style="margin-left: 20px;"></a>
					<div>
						<a><span style="font-size:15px ;font-weight: 700;padding-left: 25px;">路人甲</span></a>	
					</div>
				</div>
			
				<div style="display: inline-block;padding-left: 20px;"class="col-md-9 col-sm-8 col-xs-9 ">
					<div style="margin-top: 30px;">
						<span>对方请求加你为好友</span>
						<button class="btn btn-default btn-sm" style="float: right;">忽略</button>
						<button class="btn btn-default btn-sm" style="float: right;margin-right: 5px;">接受</button>
					</div>
					<div>
						<br><span style="font-size: 12px;color: #4CAF50;float: right;">7月13日 &nbsp;14:20</span>
					</div>
					
				</div>
			</div>
			
			<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 0px;border-bottom:inset;">
				<div class="col-md-3 col-sm-4 col-xs-3" style="padding: 0px;">
					<a href="#"><img class=" avatar_" src="../img/5.png"style="margin-left: 20px;"></a>
					<div>
						<a><span style="font-size:15px ;font-weight: 700;padding-left: 25px;">路人甲</span></a>	
					</div>
				</div>
			
				<div style="display: inline-block;padding-left: 20px;"class="col-md-9 col-sm-8 col-xs-9 ">
					<div style="margin-top: 30px;">
						<span>对方请求加你为好友</span>
						<button class="btn btn-default btn-sm" style="float: right;">忽略</button>
						<button class="btn btn-default btn-sm" style="float: right;margin-right: 5px;">接受</button>
					</div>
					<div>
						<br><span style="font-size: 12px;color: #4CAF50;float: right;">7月13日 &nbsp;14:20</span>
					</div>
					
				</div>
			</div>
			
			<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 0px;border-bottom:inset;">
				<div class="col-md-3 col-sm-4 col-xs-3" style="padding: 0px;">
					<a href="#"><img class=" avatar_" src="../img/5.png"style="margin-left: 20px;"></a>
					<div>
						<a><span style="font-size:15px ;font-weight: 700;padding-left: 25px;">路人甲</span></a>	
					</div>
				</div>
			
				<div style="display: inline-block;padding-left: 20px;"class="col-md-9 col-sm-8 col-xs-9 ">
					<div style="margin-top: 30px;">
						<span>对方请求加你为好友</span>
						<button class="btn btn-default btn-sm" style="float: right;">忽略</button>
						<button class="btn btn-default btn-sm" style="float: right;margin-right: 5px;">接受</button>
					</div>
					<div>
						<br><span style="font-size: 12px;color: #4CAF50;float: right;">7月13日 &nbsp;14:20</span>
					</div>
					
				</div>
			</div>
			
			<div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 0px;border-bottom:inset;">
				<div class="col-md-3 col-sm-4 col-xs-3" style="padding: 0px;">
					<a href="#"><img class=" avatar_" src="../img/5.png"style="margin-left: 20px;"></a>
					<div>
						<a><span style="font-size:15px ;font-weight: 700;padding-left: 25px;">路人甲</span></a>	
					</div>
				</div>
			
				<div style="display: inline-block;padding-left: 20px;"class="col-md-9 col-sm-8 col-xs-9 ">
					<div style="margin-top: 30px;">
						<span>对方请求加你为好友</span>
						<button class="btn btn-default btn-sm" style="float: right;">忽略</button>
						<button class="btn btn-default btn-sm" style="float: right;margin-right: 5px;">接受</button>
					</div>
					<div>
						<br><span style="font-size: 12px;color: #4CAF50;float: right;">7月13日 &nbsp;14:20</span>
					</div>
					
				</div>
			</div>
		
</div>
<script src="../js/webSocket.js" type="text/javascript"></script>

</body>
</html>
