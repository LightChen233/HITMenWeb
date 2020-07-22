<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.account.entity.Account"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<script type="text/javascript">
		function reloadCheckImg(){
			//<img src="..."
			$("img").attr("src","img.jsp?t="+(new Date().getTime()));
		}
	</script>
	<script language="javascript" type="text/javascript">
        function checkInCorrect()      //判断用户名和密码是否为空
        {
            if (document.getElementById('username').value == "") {
                alert('请输入用户名！')
                document.getElementById('username').focus();
                return false
            }
            if (document.getElementById('password').value == "") {
                alert('请输入密码！')
                document.getElementById('password').focus();
                return false
            }
            if(document.getElementById('checkcodeId').value == ""){
            	alert('请输入验证码！')
                document.getElementById('checkcodeId').focus();
                return false
            }
            else {
                saveInfo();
                return true;
            }
        }
 
        saveInfo = function () {
            try {
                var isSave = document.getElementById('remember').checked;   //保存按键是否选中
                if (isSave) {
                    var username = document.getElementById('username').value;
                    var password = document.getElementById('password').value;
                    if (username != "" && password != "") {
                        SetCookie(username, password);
                    }
                } else {
                    SetCookie("", "");
                }
            } catch (e) {
 
            }
        }
 
        function SetCookie(username, password) {
            var Then = new Date();
            Then.setTime(Then.getTime() + 1866240000000);
            document.cookie = "username=" + username + "%%" + password + ";expires=" + Then.toGMTString();
        }
 
        function GetCookie() {
            var nmpsd;
            var nm;
            var psd;
            var cookieString = new String(document.cookie);
            var cookieHeader = "username=";
            var beginPosition = cookieString.indexOf(cookieHeader);
            cookieString = cookieString.substring(beginPosition);
            var ends = cookieString.indexOf(";");
            if (ends != -1) {
                cookieString = cookieString.substring(0, ends);
            }
            if (beginPosition > -1) {
                nmpsd = cookieString.substring(cookieHeader.length);
                if (nmpsd != "") {
                    beginPosition = nmpsd.indexOf("%%");
                    nm = nmpsd.substring(0, beginPosition);
                    psd = nmpsd.substring(beginPosition + 2);
                    document.getElementById('username').value = nm;
                    document.getElementById('password').value = psd;
                    if (nm != "" && psd != "") {
                        // document.forms[0].checkbox.checked = true;
                        document.getElementById('remember').checked = true;
                    }
                }
            }
        }
    </script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>HitMen 登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body background="images\hitview2.jpg" style="background-size: cover" onLoad="document.getElementById('username').focus();GetCookie();">
		<%
			String error=(String)request.getAttribute("error");
			if(error!=null){
				if(error.equals("NoAccount")){
					out.print("<script> alert('您的登录名或密码错误！'); window.location='/HITMenProject/log_sign/login.jsp'; </script>");//
				}else if(error.equals("WrongCheckCode")){
					out.print("<script> alert('验证码错误！'); window.location='/HITMenProject/log_sign/login.jsp'; </script>");
				}
			}
		%>
		<div class="container">

			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="/HITMenProject/LoginServletTest" class="fh5co-form animate-box" data-animate-effect="fadeIn" method="post">
						<h2>登录</h2>
						<div class="form-group">
							<label for="username" class="sr-only">username</label>
							<input type="text" class="form-control" id="username"  name="name" placeholder="用户名" >
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">password</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="密码">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember" name="remember"/> 记住密码</label>
						</div>
						<div class="form-group">
							<p>没有账号? <a href="sign_up.jsp">注册</a></p>
						</div>
						<div class="form-group">
							<input type="text" name="checkcode" id="checkcodeId" size="4" />
							<!-- 验证码  -->
							<a href="javascript:reloadCheckImg();"><img src="img.jsp"/></a>
						</div>
						<div class="form-group">
							<input type="submit" value="登录" class="btn btn-primary" href="#" OnClick="checkInCorrect()"/>
						</div>
					</form>

				</div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	</body>
</html>