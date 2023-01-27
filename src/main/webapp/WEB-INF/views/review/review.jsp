<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


    <c:if test="${authseq == '1'}">
      <%@ include file="../../inc/header_general.jsp" %>
    </c:if>
    <c:if test="${authseq == '2'}">
      <%@ include file="../../inc/header_company.jsp" %>
    </c:if>
    <c:if test="${authseq == null}">
      <%@ include file="../../inc/header_no.jsp" %>
    </c:if>
  </head>

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
  <section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="mb-5 text-center">
              <h1 class="text-white font-weight-bold">다양한 회사 검색</h1>
              <p>검색을 해봐요</p>
            </div>
            <form method="GET" action="/guhau/review/review.do">
              <div class="row mb-5" style="display: flex;
  justify-content: center;">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <input type="text" class="form-control form-control-lg" placeholder="회사명 검색" name="word" id="word">
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span>회사 검색하기</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>

      <a href="#next" class="scroll-button smoothscroll">
        <span class=" icon-keyboard_arrow_down"></span>
      </a>
    </section>


    <section class="site-section" id="next">
      <div class="container">

        <div class="row mb-5 justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="section-title mb-2">${list.size()} Job Listed</h2>
          </div>
        </div>

        <ul class="job-listings mb-5">
        <c:forEach items="${list}" var="dto">
          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
            <a href="cdetail.do?cdata_seq=${dto.cdata_seq}"></a>
            <div class="job-listing-logo">
              <img src="/guhau/asset/images/${dto.c_pic}" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
              <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
                <h2>${dto.cdata_name}</h2>
                <strong>${dto.staravg}</strong>
              </div>
            </div>
            </li>
        </c:forEach>
        </ul>

        <div class="row pagination-wrap">
          <div class="col-md-6 text-center text-md-right">
            <div class="custom-pagination ml-auto">
              <a href="#" class="prev">Prev</a>
              <div class="d-inline-block">
              <a href="#" class="active">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              </div>
              <a href="#" class="next">Next</a>
            </div>
          </div>
        </div>

      </div>
    </section>

    <section class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-8">
            <h2 class="text-white">더 자세한 정보를 보고싶으시다면?</h2>
          </div>
          <div class="col-md-3 ml-auto">
            <a href="/guhau/member/join.do" class="btn btn-warning btn-block btn-lg">Sign Up</a>
          </div>
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
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>
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
    <script src="/guhau/asset/js/quill.min.js"></script>


    <script src="/guhau/asset/js/bootstrap-select.min.js"></script>

    <script src="/guhau/asset/js/custom.js"></script>



  </body>
</html>