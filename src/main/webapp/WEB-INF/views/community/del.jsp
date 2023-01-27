<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>

<html lang="en">
<style>
	table {
		width: 760px;
	}
	table th {
		width: 120px;
	}
	table td {
		width: 640px;
	}	
	#title {
		display: block;
		width: 630px;
	}
	#txt {
		display: block;
		width: 630px;
		height: 200px;
	}
	
</style>
  <head>
    <title>GuHaeU</title>
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
              <a href="class.jsp">커뮤니티</a>
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
          <div class="col-md-12">
            <div class="custom-breadcrumbs mb-0">
              <span class="slash">Posted by</span> Admin</a> 
              <span class="mx-2 slash">&bullet;</span>
              <span class="text-white"><strong>April 15, 2019</strong></span>
            </div>
            <h1 class="text-white">커뮤니티</h1>
            
            
          </div>
        </div>
      </div>
    </section>

    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-content">
          	
          	
          	<h3>GUHAEU 커뮤니티글</h3>
          	
          	<hr>
          	
          	
          	
			<h3>삭제하시겠습니까?</h3>
			<form method="POST" action="/guhau/community/delok.do">
				
				
			
			<hr>
			
			<div class="btns">
				<input type="button" value="돌아가기" onclick="location.href='/guhau/community/view.do?seq=${comm_seq}'">
				
				<button type="submit">
							<i class="fa-solid fa-comments"></i>
							삭제하기
				</button>
			</div>
			
			<!-- 글번호 넘기기 -->
			<input type="hidden" name="comm_seq" value="${comm_seq}">
            </form>
            

           

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
   	
   		$('#cate').val('${dto.comm_cate}');
   		$('#duty').val('${dto.duty_seq}');
   	
   	</script>
   
     
  </body>
</html>