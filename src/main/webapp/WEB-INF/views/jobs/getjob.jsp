<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<style>
    .img-logo {
        height: 148px;
        width: 148px;
    }
</style>
<head>
    <title>GuHaeU</title>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content="Free-Template.co"/>
    <link rel="shortcut icon" href="ftco-32x32.png">

    <link rel="stylesheet" href="/guhau/asset/css/custom-bs.css">
    <link rel="stylesheet" href="/guhau/asset/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="/guhau/asset/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/guhau/asset/fonts/icomoon/style.css">
    <link rel="stylesheet" href="/guhau/asset/fonts/line-icons/style.css">
    <link rel="stylesheet" href="/guhau/asset/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/guhau/asset/css/animate.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="/guhau/asset/css/style.css">

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
    <!-- .site-mobile-menu -->

    <!-- HOME -->
    <section class="home-section section-hero overlay bg-image"
             style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section" >

        <div class="container">
            <div class="row align-items-center justify-content-center">
                <!--  -->
                <div>
                    <div
                            style="position: relative; width: 1080px; padding-left: 15px; padding-right: 15px;">
                        <div class="mb-5 text-center">
                            <h1 class="text-white font-weight-bold">우리는 사람을 구해유</h1>
                            <p>구해유</p>
                        </div>
                        <form method="GET" class="search-jobs-form" action="/guhau/jobs/getjob.do">
                            <div class="mb-5"
                                 style="display: flex; justify-content: center;">
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <input type="text" class="form-control form-control-lg" id="word" name="word"
                                           placeholder="Job title, Company...">
                                </div>


                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                    <button type="submit"
                                            class="btn btn-primary btn-lg btn-block text-white btn-search">
                                        <span class="icon-search icon mr-2"></span>검색하기
                                    </button>
                                </div>
                            </div>
                            <div style="width: 500px; margin: 0 auto;">
                                <div class="mb-5"
                                     style="display: flex; justify-content: space-between;">
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select class="selectpicker" data-width="100%" title="Salary" id="salary"
                                                name="salary">
                                            <option value="0" selected>전체</option>
                                            <option value="2000">1500 ~ 2000</option>
                                            <option value="2500">2100 ~ 2500</option>
                                            <option value="3000">2600 ~ 3000</option>
                                            <option value="3500">3100 ~ 3500</option>
                                            <option value="4000">3600 ~ 4000</option>
                                            <option value="4500">4100 ~ 4500</option>
                                            <option value="5000">4600 ~ 5000</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select class="selectpicker" data-width="100%" title="Job" id="duty"
                                                name="duty">
                                            <option value="0" selected>전체</option>
                                            <c:forEach items="${dutylist}" var="dto">
                                                <option value="${dto.duty_seq}">${dto.duty_name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                                        <select class="selectpicker" data-width="100%" title="Region" id="region" name="region">
                                            <option value="0" selected>전체</option>
                                            <c:forEach items="${regionlist}" var="dto">
                                                <option value="${dto.reg_seq}">${dto.reg_name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="site-section">
        <div class="container">
                    <c:forEach items="${joblist}" var="dto">
                        <div id="detail">
                            <div class="job-listings d-block d-sm-flex pb-3 pb-sm-0 align-items-center Info"
                                 style="margin-bottom: 10px;" data-seq="${dto.emp_seq}">
                                <div class="job-listing-logo">
                                    <img src="/guhau/asset/images/${dto.c_pic}" class="img-logo">
                                </div>

                                <div
                                        class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
                                    <div
                                            class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                                        <h2>${dto.emp_title}</h2>
                                        <strong>${dto.c_id}</strong>
                                    </div>
                                    <div
                                            class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
                                        ~ ${dto.emp_deadline}
                                    </div>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
        </div>
    </section>
    <footer class="site-footer">

        <a href="#top" class="smoothscroll scroll-top">
            <span class="icon-keyboard_arrow_up"></span>
        </a>

        <div class="container">
            <div class="row mb-5">
                <div class="col-6 col-md-3 mb-4 mb-md-0">
                    <h3>Search Trending</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Web Design</a></li>
                        <li><a href="#">Graphic Design</a></li>
                        <li><a href="#">Web Developers</a></li>
                        <li><a href="#">Python</a></li>
                        <li><a href="#">HTML5</a></li>
                        <li><a href="#">CSS3</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-3 mb-4 mb-md-0">
                    <h3>Company</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Career</a></li>
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Resources</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-3 mb-4 mb-md-0">
                    <h3>Support</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="col-6 col-md-3 mb-4 mb-md-0">
                    <h3>Contact Us</h3>
                    <div class="footer-social">
                        <a href="#"><span class="icon-facebook"></span></a>
                        <a href="#"><span class="icon-twitter"></span></a>
                        <a href="#"><span class="icon-instagram"></span></a>
                        <a href="#"><span class="icon-linkedin"></span></a>
                    </div>
                </div>
            </div>

            <div class="row text-center">
                <div class="col-12">
                    <p class="copyright"><small>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved | This template is made with <i class="icon-heart text-danger"
                                                                            aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small>
                    </p>
                </div>
            </div>
        </div>
    </footer>


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
<script src="/guhau/asset/js/bootstrap-select.min.js"></script>
<script src="/guhau/asset/js/custom.js"></script>

<!-- 추가 SCRIPT -->
<script>


    $(".Info").click(function () {

        $(".info-box").remove();

        //alert($(this).data('seq'));

        let temp = this;

        $.ajax({
            type: 'GET',
            url: '/guhau/jobs/getjobtxt.do',
            data: 'seq=' + $(this).data('seq'),
            dataType: 'json',
            success: function (result) {
                //alert(result.txt);
                $(temp).after("<div class='job-listings d-block info-box' style='border: 1px solid black; margin-bottom: 10px;'><div>직무: " + result.duty + "</div><div>지역: " + result.reg + "</div><div>연봉: " + result.sal + "만원</div><div>" + result.txt + "</div></div>");
            },
            error: function (a, b, c) {
                console.log(a, b, c);
            }
        });


    });

</script>
</body>
</html>