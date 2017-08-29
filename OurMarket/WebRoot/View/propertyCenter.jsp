<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>资产中心</title>
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
		<!--这是左边菜单栏-->
		<div class="container-fluid">
				<!--流动的容器-->
				<div class="row">
					<!--这是CSS的自定义样式-->
					<div id="navbar-left" class="col-sm-2 col-md-2 sidebar">
						<!--sidebar  边栏-->
						<ul class="nav nav-sidebar">
							<!--这是列表组-->
							<li><a href="bought.jsp">已买到宝贝</a></li>
							<li><a href="uncollected.jsp">未收款宝贝</a></li>
							<li><a href="shelvedGoods.jsp">已上架宝贝</a></li>
							<li><a href="footmark.jsp">足迹宝贝</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li><a href="refundManage.jsp">退款管理</a></li>
							<li><a href="goodsManages.jsp">物品管理</a></li>
							<li><a href="ordermanage.jsp">订单管理&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge">3</span></a></li>
							<li><a href="Appraise.jsp">我的评价</a></li>
						</ul>
						<ul class="nav nav-sidebar">
							<li class="active"><a href="propertyCenter.jsp">资产中心</a></li>
						</ul>
					</div>
				</div>
		</div>
		<!--这是左边主页栏-->
		<div class="col-sm-10  col-sm-offset-3 col-md-10 col-md-offset-2 col-xs-12">
			<h2 class="sub-header">我的资产</h2>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<h4><label class="col-sm-2 col-lg-2 control-label">时间</label></h4>
					<div class="col-sm-10 col-lg-10">
						<div class="col-sm-5 col-lg-5">
							<input type="date" class="form-control" />
						</div>
						<div class="col-lg-2 col-sm-2" style="text-align: center;">--</div>
						<div class="col-lg-5 col-sm-5">
							<input type="date" class="form-control" />
						</div>						
					</div>
				</div>
				<div class="form-group">
					<h4><label class="col-sm-2 col-lg-2 control-label">分类</label></h4>
					<div class="col-lg-10 col-sm-10">
							<ul class="nav navbar-nav"> 
           					<li class="active"><a href="propertyCenter.jsp">全部</a></li> 
          					<li><a href="propertyCenter.jsp">收款</a></li> 
          				    <li><a href="propertyCenter.jsp">退款</a></li> 
              				<li><a href="propertyCenter.jsp">付款</a></li> 
             				<li><a href="propertyCenter.jsp">未到账</a></li> 
       						</ul> 
					</div>
				</div>
			</form>
			<div class="col-sm-1 col-lg-1"> 
			</div>
			<!--交易表格-->
			<div class="col-lg-10 col-sm-10">
				<table class="table">
	
				<thead>
					<tr>
						<th>交易详情</th>
						<th>交易日期</th>
						<th>交易单号</th>
						<th>交易金额</th>
						<th>交易状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
				</tbody>
				<tbody>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
				</tbody>
				<tbody>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
				</tbody>
				<tbody>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
				</tbody>
				<tbody>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
					<tr class="active">
						<td>华为手机</td>
						<td>2016/10/10</td>
						<td>15021548</td>
						<td>1500.00</td>
						<td>交易成功</td>
						<td><a href="">查看</a></td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="col-sm-1 col-lg-1"> 
			</div>
		</div>
		<button type="button" class="btn btn-primary"  data-toggle="button" style="position: fixed;right: 0px;
			top:50%;transform: translate(0,-50%);display: block;"> 统<br />计<br />查<br />询
		</button>
</body>

</html>
