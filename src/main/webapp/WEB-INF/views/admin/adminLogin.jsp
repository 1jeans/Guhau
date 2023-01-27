<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <title>GuHaU</title>
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
    

    <!-- NAVBAR -->
  <header class="site-navbar mt-3">
    <div class="container-fluid">
      <div class="row align-items-center">
        <div class="site-logo col-6"><a href="index.jsp">GuhaeU</a></div>

        <nav class="mx-auto site-navigation">
          <ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
            <li><a href="index.jsp" class="nav-link active">채용</a></li>
            <li><a href="about.html">클래스</a></li>
            <li class="has-children">
              <a href="job-listings.html">기업리뷰</a>
              <ul class="dropdown">
                <li><a href="job-single.html">Job Single</a></li>
                <li><a href="post_job.jsp">Post a Job</a></li>
              </ul>
            </li>
            <li class="has-children">
              <a href="adminClass.jsp">커뮤니티</a>
              <ul class="dropdown">
                <li><a href="services.html">Services</a></li>
                <li><a href="service-single.html">Service Single</a></li>
              </ul>
            </li>
            <li class="d-lg-none"><a href="post_job.jsp"><span class="mr-2">+</span> Post a Job</a></li>
            <li class="d-lg-none"><a href="login.jsp">Log In</a></li>
          </ul>
        </nav>

        <div class="right-cta-menu text-right d-flex aligin-items-center col-6">
          <div class="ml-auto">
            <a href="post_job.jsp" class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-add"></span>이력서 제출</a>
            <a href="login.jsp" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>로그인</a>
          </div>
          <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a>
        </div>

      </div>
    </div>
  </header>

    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">관리자 로그인</h1>
            <div class="custom-breadcrumbs">
              <a href="#">Home</a> <span class="mx-2 slash">/</span>
              <span class="text-white"><strong>로그인</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="site-section">
      <div class="container">
        <div class="row">
<%--          <div class="col-lg-6 mb-5">--%>
<%--            <h2 class="mb-4">Sign Up To JobBoard</h2>--%>
<%--            <form action="#" class="p-4 border rounded">--%>

<%--              <div class="row form-group">--%>
<%--                <div class="col-md-12 mb-3 mb-md-0">--%>
<%--                  <label class="text-black" for="fname">Email</label>--%>
<%--                  <input type="text" id="fname" class="form-control" placeholder="Email address">--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="row form-group">--%>
<%--                <div class="col-md-12 mb-3 mb-md-0">--%>
<%--                  <label class="text-black" for="fname">Password</label>--%>
<%--                  <input type="password" id="fname" class="form-control" placeholder="Password">--%>
<%--                </div>--%>
<%--              </div>--%>
<%--              <div class="row form-group mb-4">--%>
<%--                <div class="col-md-12 mb-3 mb-md-0">--%>
<%--                  <label class="text-black" for="fname">Re-Type Password</label>--%>
<%--                  <input type="password" id="fname" class="form-control" placeholder="Re-type Password">--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              <div class="row form-group">--%>
<%--                <div class="col-md-12">--%>
<%--                  <input type="submit" value="Sign Up" class="btn px-4 btn-primary text-white">--%>
<%--                </div>--%>
<%--              </div>--%>

<%--            </form>--%>
<%--          </div>--%>
          <div class="col-lg-6">
            <h2 class="mb-4">관리자 로그인</h2>
            <form method="post" action="/guhau/admin/adminLoginOk.do" class="p-4 border rounded">
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="a_id">아이디</label>
                  <input type="text" id="a_id" name="a_id" class="form-control" placeholder="Id">
                </div>
              </div>
              <div class="row form-group mb-4">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="a_pw">비밀번호</label>
                  <input type="password" id="a_pw" name="a_pw" class="form-control" placeholder="Password">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Log In" class="btn px-4 btn-primary text-white">
                </div>
              </div>

            </form>
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