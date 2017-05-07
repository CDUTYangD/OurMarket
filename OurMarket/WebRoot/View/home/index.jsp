<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>二手网</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="左右结构项目，属于大人员的社交工具">
<meta name="keywords" content="左右结构项目 社交 占座 ">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<script language="javascript"
	src="http://webapi.amap.com/maps?v=1.3&key=168484ce0ca0e0fb381b1dd319ad121e"></script>

<script src="/OurMarket/JS/Common/jquery-1.10.2.min.js"></script>
<script src="/OurMarket/JS/Common/jquery.cookie.js"></script>
<script src="/OurMarket/Resources/layer/layer.js"></script>
<script src="/OurMarket/JS/Common/jquery.validate.min.js"></script>
<script src="/OurMarket/JS/Common/bootstrapValidator.min.js"></script>
<script src="/OurMarket/JS/Account/Account.js"></script>
<script src="/OurMarket/JS/Account/MyCanvas.js"></script>
<link href="/OurMarket/Resources/layer/skin/default/layer.css"
	rel="stylesheet" />
<link href="/OurMarket/CSS/Account/Account.css" rel="stylesheet" />
<link href="/OurMarket/Resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="/OurMarket/CSS/Common/bootstrapValidator.min.css"
	rel="stylesheet" />

<!-- 主页样式 -->
<link rel="stylesheet" type="text/css" href="/OurMarket/CSS/common.css" />
<link rel="stylesheet" type="text/css" href="/OurMarket/CSS/slide.css" />
<link rel="stylesheet" type="text/css"
	href="/OurMarket/CSS/flat-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="/OurMarket/CSS/jquery.nouislider.css">
</head>
<body>

	<div id="wrap">
		<!-- 左侧菜单栏目块 -->
		<div class="leftMeun" id="leftMeun">
			<div id="logoDiv">
				<p id="logoP">
					<img id="logo" alt="" src="/OurMarket/img/logo.png"><span>欢迎来到二手网</span>
				</p>
			</div>
			<div id="personInfor">
				<p id="userName">
					<img alt="" src="/OurMarket/img/person.png">张三
				</p>
				<p>
					<img alt="" src="/OurMarket/img/adress.png">四川省成都理工大学
				</p>
				<p>
					<a>退出登录</a>
				</p>
			</div>
		</div>
		<!-- 右侧具体内容栏目 -->
		<div id="rightContent">
			<a class="toggle-btn" id="nimei"> <i
				class="glyphicon glyphicon-align-justify"></i>
			</a>
			<!-- Tab panes -->

			<div class="check-div">
				<div class="col-lg-12 col-xs-8 col-sm-8">
					<!-- Carousel
							    ================================================== -->
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<center>
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img class="first-slide" src="/OurMarket/img/alipay_logo.png"
										alt="First slide">
								</div>
								<div class="item">
									<img class="second-slide" src="/OurMarket/img/alipay_logo.png"
										alt="Second slide">
								</div>
								<div class="item">
									<img class="third-slide" src="/OurMarket/img/alipay_logo.png"
										alt="Third slide">
								</div>
							</div>
						</center>
						<a class="left carousel-control" href="#myCarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							role="button" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
					<!-- /.carousel -->
				</div>
			</div>
			<div class="check-div form-inline">
				<div class="col-xs-5 clo-xs-offset-4">
					<input type="text" class="form-control input-sm"
						placeholder="输入商品名搜索">
					<button class="btn btn-white btn-xs ">查 询</button>
				</div>
				<div>
					<ul class="nav navbar-nav navbar-right">
						<li><a class="a_register" href="javascript:;"><span
								class="glyphicon glyphicon-user"></span> 注册</a></li>
						<li><a class="a_login" href="javascript:;"><span
								class="glyphicon glyphicon-log-in"></span> 登录</a></li>
					</ul>
				</div>
			</div>

			<div id="iCenter" class="col-lg-12 col-xs-8  col-sm-8 "></div>
		</div>
	</div>


	<!--登陆界面-->
	<div id="login" class="floatDiv">
		<div class="well">
			<form id="login-from" method="post" class="form-horizontal"
				action="/OurMarket/j_spring_security_check">
				<div class="input-group ">
					<span class="input-group-addon"><i
						class="glyphicon glyphicon-user"></i></span> <input id="login_username"
						type="text" name="j_username" class="form-control "
						placeholder="请输入用户名" />
				</div>
				<div class="input-group " style="margin-top:10px;">
					<span class="input-group-addon"><i
						class="glyphicon glyphicon-lock"></i></span> <input id="login_password"
						type="password" name="j_password" class="form-control "
						placeholder="请输入密码" />
				</div>
				<div class="checkbox  mycheckbox">
					<label><input id="login_rememberme" type="checkbox">记住密码</label>
				</div>
				<div class="text-right">
					<input type="button" id="loginBtn" class="btn btn-primary"
						value="登录"> <input type="button" class="btn btn-danger"
						onclick=" layer.closeAll('page'); " value="取消">
				</div>
				<a class="a_register" href="javascript:;">还没有账号？点我注册</a>
			</form>
		</div>
	</div>
	<!--注册界面-->
	<div id="register" class="floatDiv">
		<div class="well ">
			<!-- class都是bootstrap定义好的样式，验证是根据input中的name值 -->
			<form id="register-from" method="post" class="form-horizontal"
				action="">
				<!-- 下面这个div必须要有，插件根据这个进行添加提示 -->
				<div class="form-group input-group">
					<span class="input-group-addon"><i
						class="glyphicon glyphicon-user" aria-hidden="true"></i></span> <input
						id="register_username" class="form-control" name="username"
						type="text" placeholder="由字母或数字或汉字组成">
				</div>
				<div class="form-group input-group">

					<span class="input-group-addon"><i
						class="glyphicon glyphicon-lock"></i></span> <input class="form-control"
						id="register_password" name="password" type="password"
						placeholder="必须包含6-16位字母或数字">
				</div>
				<div class="form-group input-group">

					<span class="input-group-addon"><i
						class="glyphicon glyphicon-ok"></i></span> <input class="form-control"
						id="register_confirm_password" name="confirm_password"
						type="password" placeholder="再次输入密码验证">
				</div>
				<div class="form-group input-group">

					<span class="input-group-addon"><i
						class="glyphicon glyphicon-phone"></i></span> <input class="form-control"
						id="register_phone" name="phone" type="text"
						placeholder="请输入11位手机号码">
				</div>
				<div class="form-group input-group">

					<span class="input-group-addon"><i
						class="glyphicon glyphicon-envelope"></i></span> <input
						class=" form-control " id="register_identifyCode"
						style="width: 190px" name="identifyCode" type="text"
						placeholder="请输入验证码"> <input type="button"
						id="querySecurityCodeBtn" class="btn" style="margin-left: 10px"
						value=" 获取验证码" />
				</div>

				<div class="text-right">
					<input type="button" id="registerBtn" class="btn btn-primary"
						value="注册"> <input type="button"
						class="btn btn btn-danger" onclick=" layer.closeAll('page'); "
						value="取消">
				</div>

				<a class="a_login" href="javascript:;">已有账号？点我登录</a>
			</form>
		</div>

	</div>

</body>
</html>
