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
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">면접리뷰</h1>
          </div>
        </div>
      </div>
    </section>

    
    <section class="site-section">
      <div class="container">
        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div class="border p-2 d-inline-block mr-3 rounded">
                <img src="/guhau/asset/images/job_logo_5.jpg" alt="Image">
              </div>
              <div>
                <h2>${dto.cdata_name}</h2>
                <div>
                  <span class="ml-0 mr-2 mb-2"><span class="icon-briefcase mr-2"></span>${dto.cdata_name}</span>
                  <span class="m-2"><span class="icon-room mr-2"></span>${dto.reg_name}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
                <a href="cdetail.do?cdata_seq=${dto.cdata_seq}" class="btn btn-primary btn-md">기업소개</a>
                <a href="creview.do?cdata_seq=${dto.cdata_seq}" class="btn btn-primary btn-md">기업리뷰</a>
                <a href="ireview.do?cdata_seq=${dto.cdata_seq}" class="btn btn-primary btn-md">면접리뷰</a>
                </div>
          </div>
        </div>
        <div class="row">
          
          
          <%-- <c:if test="radio-name.val() == '1'"> --%>
          <div class="col-lg-8">
            <div class="mb-5">
              <h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>면접리뷰</h3>
              
            </div>
            
            <!-- <div>
            	<select name="column" id="column">
            		<option value="0" selected>전체</option>
					<option value="1">기획/전략</option>
					<option value="2">마케팅/홍보/조사</option>
					<option value="3">회계/세무/재무</option>
					<option value="4">인사/노무/HRD</option>
					<option value="5">총무/법무/사무</option>
					<option value="6">it개발/데이터</option>
					<option value="7">디자인</option>
					<option value="8">영업/판매/무역</option>
					<option value="9">고객상담/TM</option>
					<option value="10">구매/자재/물류</option>
					<option value="11">상품기획/MD</option>
					<option value="12">운전/운송/배송</option>
					<option value="13">서비스</option>
					<option value="14">생산</option>
					<option value="15">건설/건축</option>
					<option value="16">의료</option>
					<option value="17">연구/RD</option>
					<option value="18">교육</option>
					<option value="19">미디어/문화/스포츠</option>
					<option value="20">금융/보험</option>
					<option value="21">공공/복지</option>
				</select>
            </div> -->
            
            <form method="GET" action="/guhau/ireview.do">
              <div class="row mb-5">
              	<input type="hidden" name="cdata_seq" value="${dto.cdata_seq}">
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region" name="word" id="word">
                    <option value="0" selected>전체</option>
					<option value="1">기획/전략</option>
					<option value="2">마케팅/홍보/조사</option>
					<option value="3">회계/세무/재무</option>
					<option value="4">인사/노무/HRD</option>
					<option value="5">총무/법무/사무</option>
					<option value="6">it개발/데이터</option>
					<option value="7">디자인</option>
					<option value="8">영업/판매/무역</option>
					<option value="9">고객상담/TM</option>
					<option value="10">구매/자재/물류</option>
					<option value="11">상품기획/MD</option>
					<option value="12">운전/운송/배송</option>
					<option value="13">서비스</option>
					<option value="14">생산</option>
					<option value="15">건설/건축</option>
					<option value="16">의료</option>
					<option value="17">연구/RD</option>
					<option value="18">교육</option>
					<option value="19">미디어/문화/스포츠</option>
					<option value="20">금융/보험</option>
					<option value="21">공공/복지</option>
                  </select>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <button type="submit" class="btn btn-primary btn-lg btn-block text-white btn-search"><span class="icon-search icon mr-2"></span>Search Job</button>
                </div>
              </div>
            </form>

          </div>
          <div class="col-lg-4">
            <div class="bg-light p-3 border rounded mb-4">
              <%-- <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Contact</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2"><strong class="text-black">email:</strong> ${dto.c_email}</li>
                <li class="mb-2"><strong class="text-black">tel:</strong> ${dto.c_tel}</li>
              </ul>
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Introduce</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2">${dto.c_intro}</li>
              </ul> --%>
              <ul class="job-listings mb-5">
		        <c:forEach items="${list}" var="dto">
		          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
		            <a href="cdetail.do?cdata_seq=${dto.cdata_seq}"></a>
		
		            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
		              <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
		                <h2>${dto.ireview_title}</h2>
		                <h3>${dto.ireview_txt}</h3>
		                <strong>${dto.m_name}</strong>
		                <strong>${dto.duty_name}</strong>
		              </div>
		            </div>
		            </li>
		        </c:forEach>
		       </ul>
            </div>
           </div>
           <%-- </c:if> --%>
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
    
    <script src="/guhau/asset/js/bootstrap-select.min.js"></script>
    
    <script src="/guhau/asset/js/custom.js"></script>

     
  </body>
  
  <script>
  </script>
</html>