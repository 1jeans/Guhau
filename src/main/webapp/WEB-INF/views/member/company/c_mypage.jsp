<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<style>
.qwe:checked+.aa1 {
	background-color: #89BA16;
	color: #ffffff;
}

.aa1:hover {
	cursor: pointer;
	color: cornflowerblue;
}
</style>


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
		

		<!-- HOME  이미지-->
		<section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section"></section>

		<section class="site-section">
			<div class="container" style="border: 2px solid #EEE; border-radius: 5px;">
				<div class="row align-items-center mb-5">
					<div class="col-lg-8 mb-4 mb-lg-0">
						<div class="d-flex align-items-center">
							<div class="border p-2 d-inline-block mr-3 rounded">
								<!-- 회원이미지 -->
								<img src="/guhau/asset/images/samsung.png" alt="Image" style = "width:300px; height=auto;">
							</div>
							<div>
								<h2>
									${dto.cdata_name}
								</h2>

								<div class="ml-0 mr-2 mb-2">
									이메일 : <span>${dto.c_email}</span>
								</div>
								<div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
									연락처 : <span>${dto.c_tel}</span>
								</div>
								<div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
									지 역 : <span>${dto.reg_name}</span>
								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="row">
							<div class="col-6">
								<a href="#" class="btn btn-block btn-light btn-md"
									onclick='unregister();'>탈퇴하기</a>
							</div>
							<div class="col-6">
								<a href="/guhau/member/company/c_info_edit.do" class="btn btn-block btn-primary btn-md">수정하기</a>
							</div>
						</div>
					</div>
				</div>

				<div style="display: flex;">
					<table style="width: 1106px;">
						<tr id="tr1"
							style="justify-content: space-between; text-align: center;">
							<td style="width: 500px;"><input type="radio" name="asd"
								id="a1" class="qwe" style="display: none;" value="1"><label
								for="a1" class="aa1"><span style="display:inline-block; width:200px;">회사소개</span></label></td>
							<td style="width: 500px;"><input type="radio" name="asd"
								id="a2" class="qwe" style="display: none;" value="2"><label
								for="a2" class="aa1"><span style="display:inline-block; width:200px;">클래스</span></label></td>
						</tr>
					</table>
				</div>
			</div>


			<!-- 회사소개 -->
			<div class="container" id="zxc1"
				style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
					<img alt="" src="/guhau/asset/images/123.png">
			</div>

			<!-- 클래스 -->
         <div class="container" id="zxc2"
            style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
            <h1 class="font-weight-bold" style="margin-top: 20px; margin-bottom: 20px;">BookMark Class</h1>
            <div class="container">
               <div class="row">
               <c:forEach items="${cdto}" var="cdto" begin="1" end="3">
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="/guhau/classes/classesdetail.do?class_seq=${cdto.class_seq}">
                        <img src="/guhau/asset/images/${cdto.class_pic}" alt="Image" class="img-fluid rounded mb-4">
                     </a>
                     <h3>
                        <a href="/guhau/classes/classesdetail.do?class_seq=${cdto.class_seq}" class="text-black">${cdto.class_name}</a>
                     </h3>
                     <div>April 15, 2019</div>
                  </div>
                  </c:forEach>


               </div>
            </div>
         </div>
		</section>
	</div>


	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>

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


	<script>
		function unregister() {
			if (!confirm("정말 탈퇴하시겠습니까?")) {
				alert("취소하셨습니다.");
			} else {
				location = '/guhau/member/company/c_unregisterok.do';
			}
		}
	</script>


	<!-- 추가 JS -->
	<script>
		$('input[type=radio][name=asd]').on('click', function() {

			var chkValue = $('input[type=radio][name=asd]:checked').val();

			if (chkValue == '1') {

				$('#zxc1').css('display', 'block');

				$('#zxc2').css('display', 'none');

			} else if (chkValue == '2') {

				$('#zxc2').css('display', 'block');

				$('#zxc1').css('display', 'none');

			}

		});
	</script>


</body>
</html>









