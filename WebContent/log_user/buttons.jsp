<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<script>
var xmlhttp;
function loadXMLDoc(url,cfunc)
{
	if (window.XMLHttpRequest)
	{//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// IE6, IE5 浏览器执行代码
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=cfunc;
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
}
function myFunction()
{
	loadXMLDoc("/HITMenProject/log_user/show_data.jsp",function(){
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			//	获得字符串形式的响应数据
			document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
		}
	});
}
</script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">

    <title>手势识别</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body background="assets/img/backgd1.jpg" style="background-size: cover">


      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="profile.html"><img src="assets/img/HITLOGO.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">用户名</h5>
              	  	
                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-">HOME</i>
                          <span></span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>功能</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="buttons.html">手势识别</a></li>
                          <li><a  href="#">待补充</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>用户信息</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">用户信息表</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>其他</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="#">重新登录</a></li>
                      </ul>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
      		<form action="">
      			<div class="col-lg-6 col-md-6 col-sm-12">
      				<div class="showback">
      					<h4><i class="fa fa-angle-right">基本功能</i> </h4>
						<button type="button" class="btn btn-default" ><a href="#">开始训练</a></button>
						<button type="button" onclick="myFunction()" class="btn btn-default"><a href="#">预测手势</a></button>
						<button type="button" class="btn btn-info">待补充...</button>
						<br/>
						<div id="myDiv">分析可能稍慢，请耐心等候...</div>
      				</div>
      			</div><!-- /col-lg-6 -->
      		</form>
      </section><!-- /MAIN CONTENT -->


  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jjquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
