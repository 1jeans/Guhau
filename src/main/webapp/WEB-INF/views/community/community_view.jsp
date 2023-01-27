<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="en">
<head>
    <title>GuHaeU</title>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="/guhau/asset/css/custom-bs.css">
    <link rel="stylesheet" href="/guhau/asset/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="/guhau/asset/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/guhau/asset/fonts/icomoon/style.css">
    <link rel="stylesheet" href="/guhau/asset/fonts/line-icons/style.css">
    <link rel="stylesheet" href="/guhau/asset/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/guhau/asset/css/animate.min.css">
    <link rel="stylesheet" href="/guhau/asset/css/quill.snow.css">


    <!-- MAIN CSS -->
    <link rel="stylesheet" href="/guhau/asset/css/style.css">

    <style>

        ul,
        li {
            list-style: none;
        }

        table {
            width: 1000px;
            border-collapse: collapse;
        }

        table th {
            padding: 14px 21px;
            background: #89ba16;
            /*
                #efefef
                #eeeeee
                #ececec
                #cccccc
                #dddddd
                #333333
                #666666
                #999999
             */
            color: #FFFFFF;

            border-bottom: 1px solid #ddd;
        }

        table td {
            padding: 14px 21px;
            color: #666;
            border-bottom: 1px solid #ddd;
        }

        table tr:hover {
            background: #eee;
            cursor: pointer;
        }

        .subject {
            width: 45%;
            text-align: left;
        }

        .paging {
            padding: 20px 0;
            width: 800px;
        }

        .paging > ul {
            display: flex;
            justify-content: center;
        }

        .paging > ul > li {
            padding: 8px;
            background: #efefef;
            border: 1px solid #999;
            font-size: 12px;
            margin-left: 10px;
        }

        .paging > ul > li:hover {
            cursor: pointer;
            background: #333;
            color: #fff;
        }

        .active {
            color: #fff;
        }
    </style>
</head>

<c:if test="${authseq == '1'}">
    <%@ include file="../../inc/header_general.jsp" %>
</c:if>
<c:if test="${authseq == '2'}">
    <%@ include file="../../inc/header_company.jsp" %>
</c:if>
<c:if test="${authseq == null}">
    <%@ include file="../../inc/header_no.jsp" %>
</c:if>


<body id="top">

<div id="overlayer"></div>
<div class="loader">
    <div class="spinner-border text-primary" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>

<div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>

    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image"
             style="background-image: url('/guhau/asset/images/hero_1.jpg');"
             id="home-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-white">커뮤니티</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="site-section">
        <div class="container">
            <div>
                <div class="col-lg-8 blog-content" style=" max-width: 94%;">

                    <h3>커뮤니티</h3>

                    <hr>

                    <table border="1px solid #fff">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>내용</th>
                            <th>날짜</th>
                            <th>조회수</th>
                            <th>이름</th>
                        </tr>
                        <c:forEach items="${list}" var="dto">
                            <tr>
                                <td>${dto.comm_seq}</td>
                                <td><a
                                        href="/guhau/community/view.do?comm_seq=${dto.comm_seq}">${dto.comm_title}</a>
                                </td>

                                    <%-- <td>${dto.comm_title}</td> --%>
                                <td>${dto.comm_txt}</td>
                                <td>${dto.comm_date}</td>
                                <td>${dto.comm_count}</td>
                                <td>${dto.m_name}</td>
                            </tr>
                        </c:forEach>
                    </table>

                    <form method="GET" class="search-jobs-form"
                          action="/guhau/community/community_view.do">
                        <table>
                            <tr>
                                <td>
                                    <select class="selectpicker" data-style="btn-white btn-lg"
                                            data-width="100%" title="선택" name="column" id="column">
                                        <option value="comm_title">제목</option>
                                        <option value="comm_txt">내용</option>
                                        <option value="m_name">이름</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="text" class="form-control form-control-lg"
                                           placeholder="검색" name="word" id="word" required>
                                </td>
                                <td>
                                    <button type="submit"
                                            class="btn btn-primary btn-lg btn-block text-white btn-search">
                                        <span class="icon-search icon mr-2"></span>검색하기
                                    </button>
                                </td>
                                <td>
                                    <button type="button"
                                            onclick="location.href='/guhau/community/community_view.do';"
                                            class="btn btn-primary btn-lg btn-block text-white btn-search">
                                        검색취소
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </form>

                    <div id="Add" style="padding-top: 30px; float: right;">

                        <button type="button"
                                onclick="location.href='/guhau/community/add.do'"
                                class="btn btn-primary btn-lg btn-block text-white btn-search">
                            <span class="icon-line-tools"></span> 글쓰기
                        </button>

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>


<!-- SCRIPTS -->
<script src="/guhau/asset/js/jquery.min.js"></script>
<script src="/guhau/asset/js/bootstrap.bundle.min.js"></script>
<script src="/guhau/asset/js/isotope.pkgd.min.js"></script>
<script src="/guhau/asset/js/stickyfill.min.js"></script>
<script src="/guhau/asset/js/jquery.fancybox.min.js"></script>
<script src="/guhau/asset/js/jquery.easing.1.3.js"></script>

<script src="/guhau/asset/js/jquery.waypoints.min.js"></script>
<script src="/guhau/asset/js/jquery.animateNumber.min.js"></script>
<script src="/guhau/asset/js/owl.carousel.min.js"></script>
<script src="/guhau/asset/js/quill.min.js"></script>


<script src="/guhau/asset/js/bootstrap-select.min.js"></script>

<script src="/guhau/asset/js/custom.js"></script>

<script>
    $('#column').val('${map.column}');
    $('#word').val('${map.word}');
</script>


</body>
</html>







