<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
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
				<!--流动的容器-->
				<div class="row">
					<!--这是CSS的自定义样式-->
					<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
						<!--sidebar  边栏-->
						<ul class="nav nav-sidebar">
							<!--这是列表组-->
							<li class="active"><a href="http://localhost:8080/OurMarket/View/bought.jsp">已买到宝贝</a></li>
							<li><a href="uncollected.jsp">未收款宝贝</a></li>
							<li><a href="http://localhost:8080/OurMarket/View/shelvedGoods.jsp">已上架宝贝</a></li>
							<li><a href="http://localhost:8080/OurMarket/View/footmark.jsp">足迹宝贝</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li><a href="refundManage.jsp">退款管理</a></li>
							<li><a href="goodsManages.jsp">物品管理</a></li>
							<li><a href="ordermanage.jsp">订单管理&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">3</span></a></li>
							<li><a href="../Appraise">我的评价</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li><a href="propertycenter.jsp">资产中心</a></li>
						</ul>
					</div>
				</div>
		</div>

		<!--导航栏右侧部分-->
		<div class="col-sm-10  col-sm-offset-3 col-md-10 col-md-offset-2 col-xs-12">
			 <!--搜索框-->
			<div style="padding-top: 20px;"> 
  				 <input style="width: 200px;"; type="text" class=""placeholder=输入商品名或订单号 " / >         				
 		         <button class="btn btn-info btn-search btn-sm" style="margin-left:3px">订单搜索 </button>
			</div>  
			<br>
			<!--表格部分-->
			<table class="table hidden-xs table-responsive" style="border: groove;">
			<tr>
				<th >
					商品
				</th>
				<th class="center">
					交易时间
				</th>
				<th class="col-md-2 center">
					单价(元)
				</th>
				<th >
					数量
				</th>
				<th class="col-md-2 center">
					应付金额(元)
				</th>
				<th style="text-align: center;">
					&nbsp;交易操作
				</th >
				
			</tr>
			</div>
			
			<tr>
				<td class="col-md-3  col-sm-4 col-xs-3">
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive " style="height: 80px;margin-right: 0px;float: left;"/>
				<div class=" hidden-xs " >
					 官方旗舰店/华为honor/荣耀荣耀8青春版全网通智能手机
				</div>
				</td>
				
				<td class="center" >
					2017-7-07
				</td>
				
				<td style="text-align: center;">
					12500.0
				</td>
				
				<td class="quantity">
					200
				</td>
				
				<td class="price center">
					25000.0
				</td>
				<td style="text-align: center;">
					<button onclick="received()" class="btn btn-success"style="">确认收货</button>
				</td>
				
				
			</tr>
			</table>
			<!--手机上显示-->
			<table class="table visible-xs  " style="border: groove;">	
				<td >
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive pic "/>
				</td>
				<td >
				<div  >
					 官方旗舰店/华为honor/荣耀 荣耀8青春版全网通智能手机
					<br>
						单价：<i class="fa fa-rmb"></i>
						<span>12500.0</span>
					<br>
						数量：
						<span class="quantity">2</span>	
					<br>
					<p style="">
						合计：
						<span class="price"><i class="fa fa-rmb"></i>25000.0</span>
					</p>
					<button onclick="received()"  class= "btn btn-success"style="float: right;margin-left: 20px;">确认收货</button>
				</div>
				</td>
			</table>
			
			<table class="table hidden-xs table-responsive" style="border: groove;">
			<tr>
				<th >
					商品
				</th>
				<th class="center">
					交易时间
				</th>
				<th class="col-md-2 center">
					单价(元)
				</th>
				<th >
					数量
				</th>
				<th class="col-md-2 center">
					应付金额(元)
				</th>
				<th style="text-align: center;">
					&nbsp;交易操作
				</th >
				
			</tr>
			</div>
			
			<tr>
				<td class="col-md-3  col-sm-4 col-xs-3">
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive " style="height: 80px;margin-right: 0px;float: left;"/>
				<div class=" hidden-xs " >
					 官方旗舰店/华为honor/荣耀荣耀8青春版全网通智能手机
				</div>
				</td>
				
				<td class="center" >
					2017-7-07
				</td>
				
				<td style="text-align: center;">
					12500.0
				</td>
				
				<td class="quantity">
					200
				</td>
				
				<td class="price center">
					25000.0
				</td>
				<td style="text-align: center;">
					<button onclick="received()" class="btn btn-success"style="">确认收货</button>
				</td>
				
				
			</tr>
			</table>
			<!--手机上显示-->
			<table class="table visible-xs  " style="border: groove;">	
				<td >
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive pic "/>
				</td>
				<td >
				<div  >
					 官方旗舰店/华为honor/荣耀 荣耀8青春版全网通智能手机
					<br>
						单价：<i class="fa fa-rmb"></i>
						<span>12500.0</span>
					<br>
						数量：
						<span class="quantity">2</span>	
					<br>
					<p style="">
						合计：
						<span class="price"><i class="fa fa-rmb"></i>25000.0</span>
					</p>
					<button  onclick="received()" class= "btn btn-success"style="float: right;margin-left: 20px;">确认收货</button>
				</div>
				</td>
			</table>
			
			<table class="table hidden-xs table-responsive" style="border: groove;">
			<tr>
				<th >
					商品
				</th>
				<th class="center">
					交易时间
				</th>
				<th class="col-md-2 center">
					单价(元)
				</th>
				<th >
					数量
				</th>
				<th class="col-md-2 center">
					应付金额(元)
				</th>
				<th style="text-align: center;">
					&nbsp;交易操作
				</th >
				
			</tr>
			</div>
			
			<tr>
				<td class="col-md-3  col-sm-4 col-xs-3">
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive " style="height: 80px;margin-right: 0px;float: left;"/>
				<div class=" hidden-xs " >
					 官方旗舰店/华为honor/荣耀荣耀8青春版全网通智能手机
				</div>
				</td>
				
				<td class="center" >
					2017-7-07
				</td>
				
				<td style="text-align: center;">
					12500.0
				</td>
				
				<td class="quantity">
					200
				</td>
				
				<td class="price center">
					25000.0
				</td>
				<td style="text-align: center;">
					<button  onclick="received()" class="btn btn-success"style="">确认收货</button>
				</td>
				
				
			</tr>
			</table>
			<!--手机上显示-->
			<table class="table visible-xs  " style="border: groove;">	
				<td >
					<img src="../img/5900049bN90cf8936.jpg" class="img-responsive pic "/>
				</td>
				<td >
				<div  >
					 官方旗舰店/华为honor/荣耀 荣耀8青春版全网通智能手机
					<br>
						单价：<i class="fa fa-rmb"></i>
						<span>12500.0</span>
					<br>
						数量：
						<span class="quantity">2</span>	
					<br>
					<p style="">
						合计：
						<span class="price"><i class="fa fa-rmb"></i>25000.0</span>
					</p>
					<button onclick="received()"  class= "btn btn-success"style="float: right;margin-left: 20px;">确认收货</button>
				</div>
				</td>
			</table>
			
			
</body>
<script>
	function received(){
		if(confirm("是否确认已收货？"))
		{
			location.href='bought.jsp';
		}
		else
		{
			
		}
	}
</script>
</html>