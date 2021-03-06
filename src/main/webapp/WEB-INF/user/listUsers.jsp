<%--
  Created by IntelliJ IDEA.
  User: 曾佳
  Date: 2019/3/6
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>地产项目管控平台</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath}/gentelella-1.4.0/build/css/custom.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/myCss.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="/index" class="site_title"><i class="fa fa-paw"></i> <span>地产项目管控平台</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="${pageContext.request.contextPath}/gentelella-1.4.0/production/images/img.jpg" alt="${pageContext.request.contextPath}/gentelella-1.4.0." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>${sessionScope.user.username}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <ul class="nav side-menu">
                            <c:forEach items="${permissions}" var="permission">
                            <c:choose>
                            <c:when test="${permission.key.permissionname == '用户管理'}">
                            <li class="active">
                                </c:when>
                                <c:otherwise>
                            <li>
                                </c:otherwise>
                                </c:choose>
                                <a>
                                    <c:choose>
                                        <c:when test="${permission.key.permissionname == '用户管理'}">
                                            <i class="fa fa-user"></i>
                                        </c:when>
                                        <c:when test="${permission.key.permissionname == '客户管理'}">
                                            <i class="fa fa-users"></i>
                                        </c:when>
                                        <c:when test="${permission.key.permissionname == '楼盘管理'}">
                                            <i class="fa fa-building"></i>
                                        </c:when>
                                        <c:when test="${permission.key.permissionname == '售房管理'}">
                                            <i class="fa fa-building-o"></i>
                                        </c:when>
                                        <c:when test="${permission.key.permissionname == '出租管理'}">
                                            <i class="fa fa-book"></i>
                                        </c:when>
                                    </c:choose>
                                        ${permission.key.permissionname}
                                    <span class="fa fa-chevron-down"></span>
                                </a>
                                <c:choose>
                                <c:when test="${permission.key.permissionname == '用户管理'}">
                                <ul class="nav child_menu" style="display: block;">
                                    </c:when>
                                    <c:otherwise>
                                    <ul class="nav child_menu">
                                        </c:otherwise>
                                        </c:choose>
                                        <c:forEach items="${permission.value}" var="fun">
                                            <c:choose>
                                                <c:when test="${fun.permissionname == '查看用户'}">
                                                    <li class="current-page"><a href="${fun.url}">${fun.permissionname}</a>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a href="${fun.url}">${fun.permissionname}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </ul>
                                    </li>
                                    </c:forEach>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="/logout">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="${pageContext.request.contextPath}/gentelella-1.4.0/production/images/img.jpg" alt="">${sessionScope.user.username}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li>
                                    <a href="javascript:;">
                                        <span class="badge bg-red pull-right">50%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul>
                        </li>

                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <%--<div class="page-title">
                    <div class="title_left">
                        <h3>Users <small>Some examples to get you started</small></h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>--%>

                <div class="clearfix"></div>

                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>用户列表<small>Users</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li style="float: right;"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                </p>
                                <table id="datatable-house" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>角色</th>
                                        <th>用户名</th>
                                        <th>性别</th>
                                        <th>邮箱</th>
                                        <th>联系电话</th>
                                        <th>真实姓名</th>
                                        <th>居住地址</th>
                                        <%--<th>操作</th>--%>
                                    </tr>
                                    </thead>


                                    <tbody>
                                    <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td>${user.id}</td>
                                        <td>${user.roleid == 1 ? '管理员' : '普通员工'}</td>
                                        <td>${user.username}</td>
                                        <td>${user.sex}</td>
                                        <td>${user.email}</td>
                                        <td>${user.phone}</td>
                                        <td>${user.realname}</td>
                                        <td>${user.address}</td>
                                        <%--<td><a href="/user/delUser" type="button" class="btn btn-round btn-danger">删除</a><a href="editUser.jsp" type="button" class="btn btn-round btn-primary">修改</a></td>--%>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /page content -->

    </div>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/jszip/dist/jszip.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="${pageContext.request.contextPath}/gentelella-1.4.0/build/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/myScript.js"></script>

</body>
</html>
