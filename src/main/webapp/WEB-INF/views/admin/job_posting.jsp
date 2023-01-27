<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DataTables | Gentelella</title>
    <%@ include file="/WEB-INF/inc/asset.jsp" %>

    <!-- Bootstrap -->
    <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

    <link href="/guhau/asset/admin/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/guhau/asset/admin/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/guhau/asset/admin/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/guhau/asset/admin/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/guhau/asset/admin/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/guhau/asset/admin/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="adminIndex.html" class="site_title"><span>GUHAU</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_info">
                        <span>Welcome,<h3>${auth}</h3></span>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br/>

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a href="adminIndex.do"><i class="fa fa-home"></i> 홈 </a></li>
                            <li><a href="jobPosting.do"><i class="fa fa-edit"></i> 채용공고 </a></li>
                            <li><a href="adminClass.do"><i class="fa fa-desktop"></i> 클래스 </a></li>
                            <li><a href="adminCommunity.do"><i class="fa fa-sitemap"></i> 커뮤니티 </a></li>
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
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                    <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                    <ul class=" navbar-right">
                        <li class="nav-item dropdown open" style="padding-left: 15px;">
                            <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true"
                               id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                ${auth}
                            </a>
                            <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="/guhau/admin/adminLogoutOk.do"><i
                                        class="fa fa-sign-out pull-right"></i> Log
                                    Out</a>
                            </div>
                        </li>

                        <li role="presentation" class="nav-item dropdown open">
                            <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1"
                               data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">n</span>
                            </a>
                            <ul class="dropdown-menu list-unstyled msg_list" role="menu"
                                aria-labelledby="navbarDropdown1">
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image"/></span>
                                        <span><span>관리자</span><span class="time">시간</span></span>
                                        <span class="message">관리자 메시지</span>
                                    </a>
                                </li>
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
                <div class="page-title">
                    <div class="title_left">
                        <h3>채용공고</h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Go!</button>
                    </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>채용공고 내역</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                           aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Settings 1</a>
                                            <a class="dropdown-item" href="#">Settings 2</a>
                                        </div>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card-box table-responsive">
                                            <p class="text-muted font-13 m-b-30">

                                            </p>
                                            <table id="datatable" class="table table-striped table-bordered"
                                                   style="width:100%">
                                                <thead>
                                                <tr>
                                                    <th>제목</th>
                                                    <th>내용</th>
                                                    <th>회사명</th>
                                                    <th>경력</th>
                                                    <th>날짜</th>
                                                    <th>급여</th>
                                                </tr>
                                                </thead>


                                                <tbody>
                                                <c:forEach items="${jlist}" var="dto">
                                                <tr>
                                                    <td>${dto.emp_title}</td>
                                                    <td>${dto.emp_txt}</td>
                                                    <td>${dto.cdata_name}</td>
                                                    <td>${dto.emp_career}</td>
                                                    <td>${dto.emp_date}</td>
                                                    <td>${dto.emp_pay}만원</td>
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
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<script src="/guhau/asset/adminJs/jquery.dataTables.min.js"></script>
<script src="/guhau/asset/adminJs/dataTables.bootstrap.min.js"></script>
<script src="/guhau/asset/adminJs/dataTables.buttons.min.js"></script>
<script src="/guhau/asset/adminJs/buttons.bootstrap.min.js"></script>
<script src="/guhau/asset/adminJs/buttons.flash.min.js"></script>
<script src="/guhau/asset/adminJs/buttons.html5.min.js"></script>
<script src="/guhau/asset/adminJs/buttons.print.min.js"></script>
<script src="/guhau/asset/adminJs/dataTables.fixedHeader.min.js"></script>
<script src="/guhau/asset/adminJs/dataTables.keyTable.min.js"></script>
<script src="/guhau/asset/adminJs/dataTables.responsive.min.js"></script>
<script src="/guhau/asset/adminJs/responsive.bootstrap.js"></script>
<script src="/guhau/asset/adminJs/dataTables.scroller.min.js"></script>
<script src="/guhau/asset/adminJs/jszip.min.js"></script>
<script src="/guhau/asset/adminJs/pdfmake.min.js"></script>
<script src="/guhau/asset/adminJs/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="/guhau/asset/adminJs/custom.min.js"></script>

</body>
</html>