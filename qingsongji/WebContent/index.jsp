<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>轻松记</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>

        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="res/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="res/css/animate.css" rel="stylesheet">
        <link href="res/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="res/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body id="body" data-spy="scroll" data-target=".header">

        <!--========== HEADER ==========-->
        <header class="header navbar-fixed-top">
            <!-- Navbar -->
            <nav class="navbar" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="menu-container js_nav-item">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon"></span>
                        </button>

                        <!-- Logo -->
                        <div class="logo">
                            <a class="logo-wrap" href="#body">
                                <img class="logo-img logo-img-main" src="res/img/logo.png" alt="Asentus Logo">
                                <img class="logo-img logo-img-active" src="res/img/logo-dark.png" alt="Asentus Logo">
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-collapse">
                        <div class="menu-container">
                            <ul class="nav navbar-nav navbar-nav-right">
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">主页</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">介绍</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#products">关于我们</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#" onclick="model()">登录</a></li>
                                <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#" onclick="model2()">立即注册</a></li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- End Navbar Collapse -->
                </div>
            </nav>
            <!-- Navbar -->
        </header>
        <!--========== END HEADER ==========-->
			
		<!--模态化窗口-->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">登录</h4>
      </div>
      <div class="modal-body">
        
        <!-- 登录框 -->
        			<div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>登录开始轻松记</h3>
                            		<p>输入你的用户名和密码:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">用户名</label>
			                        	<input type="text" name="username" placeholder="用户名" class="form-username form-control" >
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="password" placeholder="密码" class="form-password form-control" >
			                        </div>
			                        <button type="submit" class="btn">登录！</button>
			                    </form>
		                    </div>
                        </div>
                    </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<!-- 模态2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">注册</h4>
      </div>
      <div class="modal-body">
        
        <!-- 注册框 -->
        			<div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>注册加入我们网站</h3>
                            		<p>输入你的信息:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="signin" class="login-form">
			                    	
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">用户名</label>
			                        	<input type="text" name="username" placeholder="用户名" class="form-password form-control" id="form-password">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-username">密码</label>
			                        	<input type="password" name="password" placeholder="密码" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-username">手机号</label>
			                        	<input type="text" name="telnum" placeholder="手机号" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                    		<label class="sr-only" for="form-username">邮箱地址</label>
			                        	<input type="text" name="email" placeholder="邮箱地址" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="checkbox">
									 <label><input type="checkbox" name="sex" value="男"/>男</label>
									 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									 <label><input type="checkbox" name="sex" value="女"/>女</label>
								</div>
			                        <button type="submit" class="btn">立即注册！</button>
			                    </form>
		                    </div>
                        </div>
                    </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
        <!--========== SLIDER ==========-->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="container">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
            </div>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive" src="res/img/1920x1080/01.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title">轻松记</h1>
                                <p class="color-white">精心针对学生党打造 <br/> 从小到大，帮你记录花销，管理资金，轻松达到精致理财</p>
                            </div>
                            <a href="#" onclick="model2()" class="btn-theme btn-theme-sm btn-white-brd text-uppercase" onclick="model2()">立即注册</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="res/img/1920x1080/02.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h2 class="carousel-title">EasyCount</h2>
                                <p class="color-white">Carefully targeted at the student party, from small to large <br>help you record expenses, manage funds, easy to achieve sophisticated financial management</p>
                            </div>
                            <a href="#" onclick="model2()" class="btn-theme btn-theme-sm btn-white-brd text-uppercase" onclick="model2()">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div id="about">
            <div class="content-lg container">
                <!-- Masonry Grid -->
                <div class="masonry-grid row">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 sm-margin-b-30">
                        <div class="margin-b-60">
                            <h2>为学生白领打造</h2>
                            <p>贴心的设计，市场全新设计，深入细节，打造完美品质，管理财产，不二之选</p>
                        </div>
                        <img class="full-width img-responsive wow fadeInUp" src="res/img/500x500/01.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".2s">
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                        <div class="margin-b-60">
                            <img class="full-width img-responsive wow fadeInUp" src="res/img/500x500/02.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".3s">
                        </div>
                        <h2>极简设计</h2>
                        <p>直观的界面，采用极简风格设计让你轻松自在浏览账目</p>
                    </div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                        <div class="margin-t-60 margin-b-60">
                            <h2>多平台兼容</h2>
                            <p>更快的速度，一触即达，轻松办公，支持多平台，随时随地，想记就记</p>
                        </div>
                        <img class="full-width img-responsive wow fadeInUp" src="res/img/500x500/03.jpg" alt="Portfolio Image" data-wow-duration=".3" data-wow-delay=".4s">
                    </div>
                </div>
                <!-- End Masonry Grid -->
            </div><div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
            
            <div class="bg-color-sky-light">
                <div class="content-lg container">
                    <div class="row">
                        <div class="col-md-5 col-sm-5 md-margin-b-60">
                            <div class="margin-t-50 margin-b-30">
                                <h2>为什么选择我们?</h2>
                                <p>更直观的界面，采用极简风格设计让你轻松自在浏览账目</p>
                                <p>更快的速度，一触即达，轻松办公</p>
                                <p>更贴心的设计，市场全新设计，深入细节，打造完美品质</p>
                            </div>
                            <a href="#" onclick="model2()" class="btn-theme btn-theme-sm btn-white-bg text-uppercase">马上注册</a>
                        </div>
                        <div class="col-md-5 col-sm-7 col-md-offset-2">
                            <!-- Accordion -->
                            <div class="accordion">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    	三框架技术
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                	采用 Spring + Spring MVC + MyBatis 结构，具有组件的模块化，灵活性和重用性的优点，同时简化了基于MVC的web应用程序的开发，让我们的系统更加安全可靠。
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    	模块化设计
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class="collapsed panel-title-child" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                	    分层结构
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accodrion -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
        <!-- End About -->

        <!-- Latest Products -->
        <div id="products">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>关于我们</h2>
                        <p>轻松记，一款专注于理财与生活规划的产品。2019年，轻松记由一群热爱互联网的同仁因兴趣而推出，至今为止，已为众多用户提供了免费的在线记账服务。

							在未来，我们即将升级改版，实现了PC网站、APP和小程序，多端同步支持，使大家可以随时随地记账、理财，更好地打理生活、规划未来。
							
							轻松记为武汉市轻松记科技有限公司旗下理财应用产品，团队成员不断探索个人理财和互联网的结合点，为用户提供更全面的理财服务。</p>
                    </div>
                </div>
                <!--// end row -->

                	
                <!--// end row -->
            </div>
        </div>
        <!-- End Latest Products -->

        <!--========== FOOTER ==========-->
        <footer class="footer">
            <!-- Links -->
            <div class="section-seperator">
                <div class="content-md container">
                    <div class="row">
                        <div class="col-sm-2 sm-margin-b-30">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">主页</a></li>
                                <li class="footer-list-item"><a href="#">关于</a></li>
                                <li class="footer-list-item"><a href="#">技术支持</a></li>
                                <li class="footer-list-item"><a href="#">联系我们</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-2 sm-margin-b-30">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">优酷</a></li>
                                <li class="footer-list-item"><a href="#">腾讯视频</a></li>
                                <li class="footer-list-item"><a href="#">bilibili</a></li>
                                <li class="footer-list-item"><a href="#">cctv</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                        <div class="col-sm-3">
                            <!-- List -->
                            <ul class="list-unstyled footer-list">
                                <li class="footer-list-item"><a href="#">订阅我们的公众号</a></li>
                                <li class="footer-list-item"><a href="#">加入我们的优惠</a></li>
                                <li class="footer-list-item"><a href="#">加入我们的team</a></li>
                            </ul>
                            <!-- End List -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
            <!-- End Links -->

            <!-- Copyright -->
            <div class="content container">
                <div class="row">
                    <div class="col-xs-6">
                        <img class="footer-logo" src="res/img/logo-dark.png" alt="Aitonepage Logo">
                    </div>
                    <div class="col-xs-6 text-right">
                        © 轻松记科技有限公司 <a href="" target="_blank" title="轻松记">轻松记科技有限公司</a> - Copyright <a href="" title="软件工程" target="_blank">轻松记</a>
                    </div>
                </div>
                <!--// end row -->
            </div>
            <!-- End Copyright -->
        </footer>
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="res/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="res/vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="res/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="res/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="res/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="res/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="res/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="res/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
        <script src="res/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="res/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>
   

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="res/js/layout.min.js" type="text/javascript"></script>
        <script src="res/js/components/wow.min.js" type="text/javascript"></script>
        <script src="res/js/components/swiper.min.js" type="text/javascript"></script>
        <script src="res/js/components/masonry.min.js" type="text/javascript"></script>
        <script src="res/js/components/google-map.min.js" type="text/javascript"></script>
        <script>
         //加载模态框
        function model(obj){
            $('#myModal').modal();
        }
        function model2(obj){
            $('#myModal2').modal();
        }
    	</script>

    </body>
    <!-- END BODY -->
</html>