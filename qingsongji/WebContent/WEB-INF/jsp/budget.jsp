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
    <link href="res/layui/css/layui.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="res/layui/layui.js"></script>
	<script type="text/javascript" src="res/jquery-validation-1.19.0/jquery.validate.min.js"></script>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="res/assets/images/favicon.png">
    <title>预算记</title>
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
                            <li class="breadcrumb-item active">预算</li>
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
                    <div class="col-lg-12 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            	<!-- 表单 -->
								<h4 class="card-title">活动列表</h4>
                                <div class="table-responsive">
                                    <table class="col-lg-12 table">
                                        <thead>
                                            <tr>
                                                <th>活动名称</th>
                                                <th>活动日期</th>
                                                <th>预算金额</th>
                                                <th>备注</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach items="${ budgetArray }" var="i">
											   <tr>
	                                                <td><c:out value="${i.budname}"/></td>
	                                                <td><c:out value="${i.date}"/></td>
	                                                <td><c:out value="${i.budamt}"/></td>
	                                                <td><c:out value="${i.notes}"/></td>
	                                                <td>
	                                                	<!-- <a href="budget.jsp" class="waves-effect"><i class="fa fa-pencil-square m-r-10" aria-hidden="true"></i>修改</a>/ -->
	                                                	<a href="deletebudget?id=${i.id }" class="waves-effect"><i class="fa fa-times m-r-10" aria-hidden="true"></i>删除</a>
	                                                </td>
	                                            </tr><p>
											</c:forEach>
										</tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 添加预算 -->
                    <div class="col-lg-12 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                            	<!-- 表单 -->
								<form action="addbudget" >
									<table class="col-lg-12" border="0">
										
									    <th><h2 class="font-normal" >添加预算</h2></th>
									  <tr>
									    <th><h4 class="font-normal">预算活动名称：</h4></th>
									    <th><h4 class="font-normal">活动日期：</h4></th>
									  </tr>
									  <tr>
									    <th><input type="text" name="budname" placeholder="预算活动" class="col-lg-10 form-username form-control" id="form-username"></th>
									    <th><input type="text" name="date" placeholder="活动日期" class="col-lg-10 form-username form-control" id="test1"  autocomplete="off"></th>
									    
									  </tr>
									  <tr>
									    <th><h4 class="font-normal">预算额:</h4></th>
									    <th><h4 class="font-normal">备注:</h4></th>
									  </tr>
									  <tr>
									    <th><input type="text" name="budamt" placeholder="预算额" class="col-lg-10 form-username form-control" id="form-username"></th>
									    <th><input type="text" name="notes" placeholder="备注" class="col-lg-10 form-username form-control" id="form-username"></th>
									  </tr>
									</table>
									<input type="hidden"  name="user_id" value="${sessionScope.user_id}"/>	
									<button type="submit" class="btn btn-success">提交</button>							  
								</form>                            	
                            	
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
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
		layui.use('laydate', function(){
		  var laydate = layui.laydate;
		  
		  //常规用法
		  laydate.render({
		    elem: '#test1'
		  });
		 });
	</script>
</body>

</html>