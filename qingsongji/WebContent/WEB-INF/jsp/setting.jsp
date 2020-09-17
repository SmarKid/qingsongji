<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="res/assets/images/favicon.png">
    <title>设置</title>
    <!-- Bootstrap Core CSS -->
    <link href="res/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="res/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="res/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="res/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span>
                            <!-- dark Logo text -->
                            <img src="res/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                        </span>
                    </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto mt-md-0 ">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <li class="nav-item hidden-sm-down">
                            <form class="app-search p-l-20">
                                <input type="text" class="form-control" placeholder="查找..."> <a class="srh-btn"><i class="ti-search"></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="res/assets/images/users/1.jpg" alt="user" class="profile-pic m-r-5" />${sessionScope.user_name}</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li>
                            <a href="main" class="waves-effect"><i class="fa fa-home m-r-10" aria-hidden="true"></i>主页</a>
                        </li>
                        <li>
                            <a href="takeapen" class="waves-effect"><i class="fa fa-pencil m-r-10" aria-hidden="true"></i>记一笔</a>
                        </li>
                        <li>
                            <a href="budget" class="waves-effect"><i class="fa fa-table m-r-10" aria-hidden="true"></i>预算</a>
                        </li>
                        <li>
                            <a href="record" class="waves-effect"><i class="fa fa-book m-r-10" aria-hidden="true"></i>收支记录</a>
                        </li>
                        <li>
                            <a href="userinfo" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>用户信息</a>
                        </li>
                        <li>
                            <a href="setting" class="waves-effect"><i class="fa fa-cog m-r-10" aria-hidden="true"></i>设置</a>
                        </li>
                        <li>
                            <a href="about" class="waves-effect"><i class="fa fa-info-circle m-r-10" aria-hidden="true"></i>关于</a>
                        </li>
                    </ul>
                    <!--<div class="text-center m-t-30">
                        <a href="#" class="btn btn-danger">Download Here</a>
                    </div>-->
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="text-themecolor m-b-0 m-t-0">主页</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">主页</a></li>
                            <li class="breadcrumb-item active">设置</li>
                        </ol>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
				<!-- 白板 -->
                <div class="row">
                    <!-- Column -->
                    
                    <!-- Column -->
                    <!-- 白板 -->
                    <!-- Column -->
                    <div class="col-lg-6 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            	<!-- 表单 -->
								<h4 class="card-title">来源</h4>
                                <div class="table-responsive">
                                    <table class="col-lg-12 table">
                                        <thead>
                                            <tr>
                                                <th>来源</th>
                                                <th>操作&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="model()" class="waves-effect"><i class="fa fa-plus m-r-10" aria-hidden="true"></i>添加</a></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${ sources }" var="i">
											   <tr>
	                                                <td><c:out value="${i.source}"/></td>
	                                                <td>
	                                                	<!-- <a href="budget.jsp" class="waves-effect"><i class="fa fa-pencil-square m-r-10" aria-hidden="true"></i>修改</a>/ -->
	                                                	<a href="deletesource?source_id=${i.id }&user_id=1" class="waves-effect"><i class="fa fa-times m-r-10" aria-hidden="true"></i>删除</a>
	                                                </td>
	                                            </tr>
											</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-6 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            	<!-- 表单 -->
								<h4 class="card-title">用途</h4>
                                <div class="table-responsive">
                                    <table class="col-lg-12 table">
                                        <thead>
                                            <tr>
                                                <th>用途</th>
                                                <th>操作&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="model2()"class="waves-effect"><i class="fa fa-plus m-r-10" aria-hidden="true"></i>添加</a></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${ usefors }" var="j">
											   <tr>
	                                                <td><c:out value="${j.usefor}"/></td>
	                                                <td>
	                                                	<!-- <a href="budget.jsp" class="waves-effect"><i class="fa fa-pencil-square m-r-10" aria-hidden="true"></i>修改</a>/ -->
	                                                	<a href="deleteusefor?usefor_id=${j.id }&user_id=1" class="waves-effect"><i class="fa fa-times m-r-10" aria-hidden="true"></i>删除</a>
	                                                </td>
	                                            </tr>
											</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Column -->
                </div>
                <div class="col-lg-6 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            	<!-- 表单 -->
								<h4 class="card-title">设置每日参考支出限额</h4>
								<form action="updateavecon">
                                 <input type="text" name="avecon" placeholder="${sessionScope.avecon }" class="col-lg-10 form-username form-control" >
                                 <button type="submit" class="btn btn-success">更改</button>	
                                 </form>
                            </div>
                        </div>
                    </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
            </div>
        
        <!-- 修改来源模态框 -->
            <div class="modal fade" id="editSource" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">添加来源</h4>
			      </div>
			      <form action="addsource">
			      <div class="modal-body">
			        			<input type="text" name="source" placeholder="输入来源" class="form-username form-control" >
			
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button type="submit" class="btn btn-success" >添加</button>
			      </div>
			      </form>
			    </div>
			  </div>
			</div>
 			<!-- 修改用途模态框 -->
            <div class="modal fade" id="editUsefor" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">添加用途</h4>
			      </div>
			      
			      <form action="addusefor">
			      <div class="modal-body">
			        			<input type="text" name="usefor" placeholder="输入用途" class="form-username form-control" id="form-username">
			
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button type="submit" class="btn btn-success">添加</button>
			      </div>
			      </form>
			    </div>
			  </div>
			</div>
			<!-- 设置通知 -->	
					<div class="col-lg-12 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            <table class="col-lg-12">
                            	<tr>
                            		<td><button type="button" onclick="window.location.href='index.jsp'" class="btn btn-danger btn-lg" data-dismiss="modal">退出登录</button></td>
                            	</tr>
                            </table>
                            </div>
                        </div>
                    </div>
                            
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                © 轻松记科技有限公司 <a href="#" target="_blank" title="轻松记科技有限公司">轻松记科技有限公司</a> - Copyright  <a href="" title="轻松记" target="_blank">轻松记</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="res/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="res/assets/plugins/bootstrap/js/tether.min.js"></script>
    <script src="res/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="res/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="res/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="res/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="res/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="res/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="res/assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script>
         //加载模态框
        function model(obj){
            $('#editSource').modal();
        }
        function model2(obj){
            $('#editUsefor').modal();
        }
    	</script>
</body>

</html>
