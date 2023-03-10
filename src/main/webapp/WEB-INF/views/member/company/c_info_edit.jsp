<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<!-- MAIN CSS -->
<link rel="stylesheet" href="/guhau/asset/css/style.css">
</head>


<c:if test="${authseq == '1'}">
		<%@ include file="../../../inc/header_general.jsp" %>
		</c:if>
		<c:if test="${authseq == '2'}">
		<%@ include file="../../../inc/header_company.jsp" %>
		</c:if>
		<c:if test="${authseq == null}">
		<%@ include file="../../../inc/header_no.jsp" %>
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


		<!-- NAVBAR -->
		

		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
		</section>

		<section class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb-5">
						<h2 class="mb-4">???????????? ??????</h2>
						<form method="POST"
							action="/guhau/member/company/c_info_editok.do"
							class="p-4 border rounded" style="width: 900px;">

							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<!-- ???X ?????? ????????? ????????? -->								
									<label class="text-black" for="m_name">?????? ??????</label> <input
										type="text" name="c_name" id="c_name" class="form-control"
										value="${dto.cdata_name}" readonly="readonly">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="text-black" for="m_email">?????? ?????????</label> <input
										type="text" name="c_email" id="c_email" class="form-control"
										value="${dto.c_email}">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="text-black" for="m_tel">?????? ?????????</label> <input
										type="text" name="c_tel" id="c_tel" class="form-control"
										value="${dto.c_tel}">
								</div>
							</div>
							
							<div class="row form-group" style="margin-bottom: 30px;">
								<div class="col-md-12 mb-3 mb-md-0">
									<label class="text-black" for="m_address">??????</label>
										<select class="selectpicker" data-width="100%" title="??????" name="region">
										<%-- <c:forEach items="${list}" var="dto"> --%>
										<option value="1">??????</option>
										<option value="2">??????</option>
										<option value="3">??????</option>
										<option value="4">??????</option>
										<option value="5">??????</option>
										<option value="6">??????</option>
										<option value="7">??????</option>
										<option value="8">??????</option>
										<option value="9">??????</option>
										<option value="10">??????</option>
										<option value="11">??????</option>
										<option value="12">??????</option>
										<option value="13">??????</option>
										<option value="14">??????</option>
										<option value="15">??????</option>
										<option value="16">??????</option>
										<%-- </c:forEach> --%>
									</select>
								</div>
							</div>


							<!-- ???????????? -->
							<div class="row form-group" style="float: left;">
								<div class="col-md-12">
									<input type="button" value="????????????"
										class="btn px-4 btn-primary text-white"
										onclick="location.href='/guhau/member/company/c_mypage.do';">
								</div>
							</div>

							<!-- ???????????? -->
							<div class="row form-group">
								<div class="col-md-12">
									<input type="submit" value="????????????!" class="btn px-4 btn-primary text-white">
								</div>
							</div>


							<input type="hidden" name="seq" value="${dto.m_id}">
						</form>

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


	<!-- ???????????? -->
	<script>
		$('select[name=region]').val(${dto.reg_seq});
	</script>


</body>
</html>