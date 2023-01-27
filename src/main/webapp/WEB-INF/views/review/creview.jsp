<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <title>Guhau</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


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
</head>
<style>
    .btn-md {
        margin: auto;
    }
</style>

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
    </div> <!-- .site-mobile-menu -->




    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image"
             style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h1 class="text-white font-weight-bold">기업리뷰</h1>
                </div>
            </div>
        </div>

    </section>

    <section class="site-section services-section bg-light block__62849" id="next-section">
        <div class="container">

            <div class="row">

                <c:forEach items="${list}" var="dto">
                    <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

                        <a href="service-single.html" class="block__16443 text-center d-block">
                            <span class="custom-icon mx-auto"><span class="icon-magnet d-block"></span></span>
                            <h3>${dto.creview_title}</h3>
                            <p>${dto.creview_txt}</p>
                            <strong>${dto.m_name}</strong>
                            <strong>${dto.years}년차</strong><br>
                            <strong>${dto.creview_star}점<i class="fa-solid fa-star"></i></strong>
                        </a>

                    </div>
                </c:forEach>

            </div>
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


</body>

<script>


</script>
</html>