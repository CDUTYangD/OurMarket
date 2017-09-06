<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>评价</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/Logout.js"></script>
	
	<link rel="stylesheet" href="<%= basePath %>/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/dashboard.css" />
	<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/carousel.css" />	
	<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/font-awesome.css" />
	<link rel="stylesheet" type="text/css" href="<%= basePath %>/css/Message.css" />
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
		<!--左侧导航栏-->
		<div class="row">
			<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
			<!--sidebar  边栏-->
			<ul class="nav nav-sidebar">
				<!--这是列表组-->
				<li ><a href="bought">已买到宝贝</a></li>
				<li><a href="View/uncollected.jsp">未收款宝贝</a></li>
				<li><a href="View/shelvedGoods.jsp">已上架宝贝</a></li>
				<li><a href="View/footmark.jsp">足迹宝贝</a></li>
			</ul>
			<ul class="nav nav-sidebar">
				<li><a href="View/refundManage.jsp">退款管理</a></li>
				<li><a href="View/goodsManages.jsp">物品管理</a></li>
				<li><a href="View/orderManage.jsp">订单管理</a></li>
				<li class="active"><a href="Appraise.jsp">我的评价</a></li>
			</ul>
			<ul class="nav nav-sidebar">
				<li><a href="propertyCenter.jsp">资产中心</a></li>
			</ul>
			</div>
		</div>
			
		<div   class="col-sm-9 col-md-10 col-md-offset-2  col-sm-offset-3 main" >
			<table class="table">
	<thead>
		<tr>
			<th>商品详情</th>
			<th>付款日期</th>
			<th>状态</th>
			<th>评价</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${comInfos}" var="comInfo"> 
		<tr class="active">
			<td>
				<div class="col-sm-3 col-md-3">
					<img src="${comInfo.getGoodImg()}" style="width: 100px;"/>
				</div>
				<div class="col-sm-9 col-md-9">
					${comInfo.getGoodName()}
					<br />
					数量：${comInfo.getGoodNum()}
					<br />
					价格：${comInfo.getGoodPrice()}
				</div>
			</td>
			<td>${comInfo.getCommentTime()}</td>
			<td>${comInfo.getCommentState()}</td>
			<td><a  data-toggle="modal" data-target="#myModal">查看</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
			
		</div>
		
		
		<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					我的评价
				</h4>
			</div>
			<div class="modal-body">
				这个产品非常好，我非常喜欢。
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button id="againappraise" type="button" class="btn btn-primary">
					追评
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
		
</div>
</div>
</body>
<script type="text/javascript">
	var a=document.getElementById("againappraise");
	a.onclick=function(){
		location.href="specificappraise.jsp";
	}
</script>
</html>