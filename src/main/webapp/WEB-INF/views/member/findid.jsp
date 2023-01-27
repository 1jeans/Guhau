<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!doctype html>
<html lang="en">
<head>

<title>GuHaU</title>
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

		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1 class="text-white font-weight-bold">로그인</h1>
					</div>
				</div>
			</div>
		</section>

		<section class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<h2 class="mb-4">아이디/비밀번호 찾기</h2>
						
						<c:if test="${result == 1}">
						
							당신의 아이디는 ${id} 입니다.
							당신의 암호는 ${pw} 입니다.
						
						</c:if>
						
						<c:if test="${result == 0}">
							입력하신 이메일은 존재하지 않는 회원입니다.
						</c:if>
						
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



</body>
</html>