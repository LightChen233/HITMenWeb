<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.account.entity.Account"%>  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/log_user/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="${pageContext.request.contextPath}/log_user/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/log_user/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/log_user/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/log_user/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/log_user/assets/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/log_user/assets/css/style-responsive.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/log_user/assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  		<%! Account account =null;%>
		<%
			account=(Account)session.getAttribute("account");
		%>

      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              
              <ul class="sidebar-menu" id="nav-accordion">
            
              	   <p class="centered"><a href="${pageContext.request.contextPath}/log_user/form_component.jsp"><img src="${pageContext.request.contextPath}/log_user/assets/img/HITLOGO.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><%=account.getName() %></h5>
                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/log_user/javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>功能</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/log_user/buttons.jsp">手势识别</a></li>
                          <li><a  href="#">待补充</a></li>
                      </ul>
                  </li>


                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/log_user/javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>用户信息</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="${pageContext.request.contextPath}/log_user/form_component.jsp">用户信息表</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="${pageContext.request.contextPath}/log_user/javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>其他</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="/HITMenProject/log_sign/login.jsp">重新登录</a></li>
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
          <section class="wrapper">

              <div class="row">
                  <div class="col-lg-9 main-chart">

                      <div class="row mt">
                      <!-- SERVER STATUS PANELS -->
                          <div class="col-md-4 col-sm-4 mb">
                              <div class="white-panel pn">
                                  <div class="white-header">
                                      <h5>采集设备</h5>
                                  </div>
                                  <div class="centered">
                                      <img src="${pageContext.request.contextPath}/log_user/assets/img/caiji.png" height="180" width="250">
                                  </div>
                              </div>
                          </div><!-- /col-md-4 -->
                      	

                      	<div class="col-md-4 col-sm-4 mb">
                      		<div class="white-panel pn">
                      			<div class="white-header">
						  			<h5>语义分割</h5>
                      			</div>

	                      		<div class="centered">
										<img src="${pageContext.request.contextPath}/log_user/assets/img/yuyifenge.png" height="180" width="250">
	                      		</div>
                      		</div>
                      	</div><!-- /col-md-4 -->

                          <div class="col-md-4 col-sm-4 mb">
                              <div class="white-panel pn">
                                  <div class="white-header">
                                      <h5>信号处理</h5>
                                  </div>
                                  <!--								<div class="row">-->
                                  <!--									<div class="col-sm-6 col-xs-6"></div>-->
                                  <!--	                      		</div>-->
                                  <div class="centered">
                                      <img src="${pageContext.request.contextPath}/log_user/assets/img/xinhao.png" height="180" width="250">
                                  </div>
                              </div>
                          </div><!-- /col-md-4 -->
                      	

                    </div><!-- /row -->
                    
                    				
					<div class="row">
						<!-- TWITTER PANEL -->
                        <div class="col-md-4 col-sm-4 mb">
                            <div class="white-panel pn">
                                <div class="white-header">
                                    <h5>样品设备穿戴</h5>
                                </div>
                                <!--								<div class="row">-->
                                <!--									<div class="col-sm-6 col-xs-6"></div>-->
                                <!--	                      		</div>-->
                                <div class="centered">
                                    <img src="${pageContext.request.contextPath}/log_user/assets/img/chuandai.png" height="180" width="250">
                                </div>
                            </div>
                        </div><!-- /col-md-4 -->


                        <div class="col-md-4 col-sm-4 mb">
                            <div class="white-panel pn">
                                <div class="white-header">
                                    <h5>程序流程</h5>
                                </div>
                                <!--								<div class="row">-->
                                <!--									<div class="col-sm-6 col-xs-6"></div>-->
                                <!--	                      		</div>-->
                                <div class="centered">
                                    <img src="${pageContext.request.contextPath}/log_user/assets/img/liucheng.png" height="175" width="200">
                                </div>
                            </div>
                        </div><!-- /col-md-4 -->

                        <div class="col-md-4 col-sm-4 mb">
                            <div class="white-panel pn">
                                <div class="white-header">
                                    <h5>预期目标</h5>
                                </div>
                                <!--								<div class="row">-->
                                <!--									<div class="col-sm-6 col-xs-6"></div>-->
                                <!--	                      		</div>-->
                                <div class="centered">
                                    <img src="${pageContext.request.contextPath}/log_user/assets/img/mubiao.png" height="180" width="250">
                                </div>
                            </div>
                        </div><!-- /col-md-4 -->
						
					</div><!-- /row -->
					
					<div class="row mt">
                      <!--CUSTOM CHART START -->
                      <div class="border-head">
                          <h3>ACCURACY</h3>
                      </div>
                      <div class="custom-bar-chart">
                          <ul class="y-axis">
                              <li><span>100.00</span></li>
                              <li><span>80.00</span></li>
                              <li><span>60.00</span></li>
                              <li><span>40.00</span></li>
                              <li><span>20.00</span></li>
                              <li><span>0</span></li>
                          </ul><!-- ${pageContext.request.contextPath}/log_user/ -->
                          <div class="bar">
                              <div class="title">握拳</div>
                              <div class="value tooltips" data-original-title="85.00" data-toggle="tooltip" data-placement="top">85%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">剪刀</div>
                              <div class="value tooltips" data-original-title="86.00" data-toggle="tooltip" data-placement="top">86%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">点赞</div>
                              <div class="value tooltips" data-original-title="84.00" data-toggle="tooltip" data-placement="top">84%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">比心</div>
                              <div class="value tooltips" data-original-title="90.00" data-toggle="tooltip" data-placement="top">90%</div>
                          </div>
                          <div class="bar">
                              <div class="title">蜘蛛侠</div>
                              <div class="value tooltips" data-original-title="78.00" data-toggle="tooltip" data-placement="top">78%</div>
                          </div>
                          <div class="bar ">
                              <div class="title">手枪</div>
                              <div class="value tooltips" data-original-title="62.00" data-toggle="tooltip" data-placement="top">62%</div>
                          </div>
                          <div class="bar">
                              <div class="title">OK</div>
                              <div class="value tooltips" data-original-title="75.00" data-toggle="tooltip" data-placement="top">75%</div>
                          </div>
                      </div>
                      <!--custom chart end-->
					</div><!-- /row -->

                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
                  
                  
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                  
                  
                  <div class="col-lg-3 ds">
                    <!--COMPLETED ACTIONS DONUTS CHART-->
						<h3>注意事项</h3>

                      <!-- First Action -->
                      <div class="desc">
                      	<div class="thumb">
                      		<span class="badge bg-theme"><i >1</i></span>
                      	</div>
                      	<div class="details">
                      		<p>在采集信号时，手臂尽量不做多余动作，以免有较强的干扰<br/>
                      		</p>
                      	</div>
                      </div>
                      <!-- Second Action -->
                      <div class="desc">
                          <div class="thumb">
                              <span class="badge bg-theme"><i >2</i></span>
                          </div>
                          <div class="details">
                              <p>初次训练采集训练数据时，手臂动作尽量标准、有力<br/>
                              </p>
                          </div>
                      </div>
                      <!-- Third Action -->
                      <div class="desc">
                          <div class="thumb">
                              <span class="badge bg-theme"><i >3</i></span>
                          </div>
                          <div class="details">
                              <p>放置设备时，应放在阴凉干燥处<br/>
                              </p>
                          </div>
                      </div>
                      <!-- Fourth Action -->
                      <div class="desc">
                          <div class="thumb">
                              <span class="badge bg-theme"><i >4</i></span>
                          </div>
                          <div class="details">
                              <p>训练数据可能需要一段时间，请耐心等待<br/>
                              </p>
                          </div>
                      </div>
                      <!-- Fifth Action -->
                      <div class="desc">
                          <div class="thumb">
                              <span class="badge bg-theme"><i >5</i></span>
                          </div>
                          <div class="details">
                              <p>若使用时无反应，应检查网络是否畅通，保证文件稳定传输<br/>
                              </p>
                          </div>
                      </div>

                       <!-- USERS ONLINE SECTION -->
						<h3>团队成员</h3>
                      <!-- First Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="${pageContext.request.contextPath}/log_user/assets/img/chen.png" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p>梁晨<br/>
                      		   <muted>来自黑龙江省伊春，就读于哈工大计信工科试验班</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Second Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="${pageContext.request.contextPath}/log_user/assets/img/jian.png" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p>耿健<br/>
                      		   <muted>来自黑龙江省绥化市，就读于哈工大计信工科试验班</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Third Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="${pageContext.request.contextPath}/log_user/assets/img/guang.png" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">陈麒光</a><br/>
                      		   <muted>来自浙江省台州市，就读于哈工大计信工科试验班</muted>
                      		</p>
                      	</div>
                      </div>
                      <!-- Fourth Member -->
                      <div class="desc">
                      	<div class="thumb">
                      		<img class="img-circle" src="${pageContext.request.contextPath}/log_user/assets/img/hao.png" width="35px" height="35px" align="">
                      	</div>
                      	<div class="details">
                      		<p><a href="#">顾韦濠</a><br/>
                      		   <muted>来自海南省，就读于哈工大计信工科试验班</muted>
                      		</p>
                      	</div>
                      </div>


                  </div><!-- /col-lg-3 -->
              </div><! --/row -->
          </section>
      </section>

      <!--main content end-->
      <!--footer start-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
	<script src="assets/js/zabuto_calendar.js"></script>	
	
	<script type="text/javascript">
        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Welcome to HITMEN!',
            // (string | mandatory) the text inside the notification
            text: 'HITMEN是由哈尔滨工业大学在校本科生组建的一个项目学习小组，基于肌电的手势识别系统的研究是我们小组的第一个课题，你可以 <a href="" target="_blank" style="color:#ffd777">点击这里</a>.进入官网了解我们。',
            // (string | optional) the image to display on the left
            image: '${pageContext.request.contextPath}/log_user/assets/img/HITLOGO.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>
