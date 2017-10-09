<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>貮获登录</title>




<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>/css/animate.css">
<link rel="stylesheet" href="<%=basePath%>/css/signIn.css">


<!-- Modernizr JS -->
<script src="<%=basePath%>/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="<%=basePath%>/js/respond.min.js"></script>
	<![endif]-->

</head>
<body class="style-3">

	<div class="container" >
      <div class="row" style="height:120px">
				
		</div>
		<div class="row">
			<div class="col-md-4 col-md-push-8">
				

				<!-- Start Sign In Form -->
				<form action="log" class="fh5co-form animate-box"
					data-animate-effect="fadeInRight">
					<h2 >登录</h2>
					<div class="form-group">
						<label for="username" class="sr-only">用户名</label> <input
							type="text" class="form-control" id="username" name="phone"
							placeholder="请输入用户名" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">密码</label> <input
							type="password" class="form-control" id="password" name="password"
							placeholder="请输入密码" autocomplete="off">
					</div>
					<div class="form-group">
						<label for="remember"><input type="checkbox" id="remember">
							记住我</label>
					</div>
					<div class="form-group">
						<p>
							没有账号? <a href="#">注册</a> | <a href="#">忘记密码?</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="登录" class="btn btn-primary">
					</div>
				</form>
				<!-- END Sign In Form -->


			</div>
		</div>
		<div class="row" style="padding-top: 60px; clear: both;">
			<div class="col-md-12 text-center">
				<p>
					<small>&copy; 貮获引资 <a
						href="http://localhost:8080/OurMarket/" target="_blank" title="貮获">联系我们</a>
						- Collect from <a href="http://localhost:8080/OurMarket"
						title="建议" target="_blank">建议</a></small>
				</p>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="<%=basePath%>/js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="<%=basePath%>/js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="<%=basePath%>/js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script type="text/javascript">
		;(function() {
	
	
			'use strict';
	
			// Placeholder 
			var placeholderFunction = function() {
				$('input, textarea').placeholder({
					customClass : 'my-placeholder'
				});
			}
	
			// Placeholder 
			var contentWayPoint = function() {
				var i = 0;
				$('.animate-box').waypoint(function(direction) {
	
					if (direction === 'down' && !$(this.element).hasClass('animated-fast')) {
	
						i++;
	
						$(this.element).addClass('item-animate');
						setTimeout(function() {
	
							$('body .animate-box.item-animate').each(function(k) {
								var el = $(this);
								setTimeout(function() {
									var effect = el.data('animate-effect');
									if (effect === 'fadeIn') {
										el.addClass('fadeIn animated-fast');
									} else if (effect === 'fadeInLeft') {
										el.addClass('fadeInLeft animated-fast');
									} else if (effect === 'fadeInRight') {
										el.addClass('fadeInRight animated-fast');
									} else {
										el.addClass('fadeInUp animated-fast');
									}
	
									el.removeClass('item-animate');
								}, k * 200, 'easeInOutExpo');
							});
	
						}, 100);
	
					}
	
				}, {
					offset : '85%'
				});
			};
			// On load
			$(function() {
				placeholderFunction();
				contentWayPoint();
	
			});
	
		}());
	</script>

</body>
</html>


