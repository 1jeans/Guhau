<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<style>
	.customSuggestionsList > div{
	  max-height: 300px;
	  min-height: 50px;
	  border: 2px solid pink;
	  overflow: auto;
	}
	
	.customSuggestionsList .empty{
	  color: #999;
	  font-size: 20px;
	  text-align: center;
	  padding: 1em;
	}
</style>
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
    </div>
    

    <!-- NAVBAR -->
  

    <!-- HOME -->
    
    <form method="POST" action="/guhau/member/comjoinok.do"
    					enctype="multipart/form-data"> 
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">기업 회원가입</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5"	 style="margin: 0px auto;">
            <h2 class="mb-4">기업 회원 가입</h2>

              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="c_id">ID</label>
                  <input type="text" id="c_id" class="form-control" placeholder="ID" name="c_id">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="c_pw">Password</label>
                  <input type="password" id="c_pw" class="form-control" placeholder="Password" name="c_pw">
                </div>
              </div>
              
              
              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="c_tel">Tel</label>
                  <input type="text" id="c_tel" class="form-control" placeholder="Tel" name="c_tel">
                </div>
              </div>
              

              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="c_email">Email</label>
                  <input type="text" id="c_email" class="form-control" placeholder="Email" name="c_email">
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="c_pic">Picture</label>
                  <input type="file" id="c_pic" class="form-control" placeholder="Picture" name="c_pic">
                </div>
              </div>



              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="reg_seq">Region number</label>
                  <input type="text" id="reg_seq" class="form-control" placeholder="Region Number" name="reg_seq">
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="text-black" for="cdata_seq">Company number</label>
                  <input type="text" id="cdata_seq" class="form-control" placeholder="Company Number" name="cdata_seq">
                </div>
              </div>
              
              

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Sign Up" class="btn px-4 btn-primary text-white" style="float: right;">
                </div>
              </div>

              
              

          </div>
        </div>
      </div>
    </section>
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
    

     
  </body>
</html>