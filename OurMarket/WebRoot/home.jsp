<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>二手网</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <!-- Graph CSS -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
    <!-- Nav CSS -->
    <link href="css/custom.css" rel="stylesheet">
    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/metisMenu.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script language="javascript" src="http://webapi.amap.com/maps?v=1.3&key=168484ce0ca0e0fb381b1dd319ad121e"></script>
    <style href="css/login.css"></style>
</head>
<body onload="init()">
<div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top form-inline" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <p class="navbar-brand">Welcome</p>
        </div>
        <!-- /.navbar-header -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle avatar" data-toggle="modal" data-target="#myModal"><img src="img/avatar.png"></a>

            </li>
        </ul>
        <form class="navbar-form navbar-right">

            <input type="text" class="form-control" value="Search..." onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = 'Search...';}">
        </form>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <!--<p><img alt="" src="img/adress.png" class="fa"> <span>四川省成都理工大学</span></p>  -->
                        <a href="index.html"><i class="fa fa-dashboard fa-fw nav_icon"></i>四川省成都理工大学</a>
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-envelope nav_icon"></i>购物管理</a>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-flask nav_icon"></i>销售管理</a>
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">
        <div class="graphs">
            <center>
                <div id="myCarousel" class="carousel slide ">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="img/alipay_logo.png" alt="First slide">
                        </div>
                        <div class="item">
                            <img src="img/alipay_logo.png" alt="Second slide">
                        </div>
                        <div class="item">
                            <img src="img/alipay_logo.png" alt="Third slide">
                        </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="carousel-control left" href="#myCarousel"
                       data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#myCarousel"
                       data-slide="next">&rsaquo;</a>
                </div>
            </center>
            <!-- 地图 -->
            <div style="width: 100%;padding: 5px 0;">
                <div id="iCenter" style="height:100% "></div>
            </div>
        </div>
        <!-- /#page-wrapper -->

    </div>
</div>


<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content " style=" font-family: 'microsoft yahei',Arial,sans-serif;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"  aria-hidden="true">&times;</button>
                        <h1 class="text-center text-primary">登录</h1>
                    </div>
                    <div class="modal-body">
                        <form action="" class="form col-md-12 center-block " method="post">
                            <div class="form-group" style="border: 1px solid #D0D6D9">
                                <input type="text" name="UserID" id="User" class="form-control input-lg" placeholder="电子邮件&账号">
                            </div>
                            <div class="form-group" style="border: 1px solid #D0D6D9">
                                <input type="password" name="password" id="pass"  class="form-control input-lg" placeholder="登录密码">
                            </div>
                            <div class="form-group">
                                <button class="btn btn-primary btn-lg btn-block" method="" action="">立刻登录</button>
                                <span><a href="#">找回密码</a></span>
                                <span><a href="signUp.html" class="pull-right">注册</a></span>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">

                    </div><!-- /.modal-content -->
			</div><!-- /.modal -->
			</div>
			
			
<!--要在主界面加载完毕后执行地图加载以及定位-->
 <script type="text/javascript" src="js/loadMap.js"></script>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript 
<script src="js/bootstrap.min.js"></script>-->
</body>
</html>
