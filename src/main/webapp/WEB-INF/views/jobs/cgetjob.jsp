<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<style>
	.qwe:checked + .aa1 {
        background-color: #89BA16;
        color: #ffffff;
    }
	.aa1:hover {
		cursor: pointer;
		color: cornflowerblue;
	}
</style>

<head>
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
		<header class="site-navbar mt-3">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="site-logo col-6">
						<a href="index.jsp">GuhaeU</a>
					</div>

					<nav class="mx-auto site-navigation">
						<ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
							<li><a href="/guhau/jobs/cgetjob.do" class="nav-link active">채용</a></li>
							<li><a href="/guhau/classes/classes.do">클래스</a></li>
							
							<li><a href="/guhau/community/ccommunity_view.do">커뮤니티</a>
						</ul>
					</nav>

					<div class="right-cta-menu text-right d-flex aligin-items-center col-6">
	                  <div class="ml-auto">
	                  <!-- 로그아웃 -->
	                     <a href="/guhau/member/logoutok.do" class="btn btn-outline-white border-width-2 d-none d-lg-inline-block">
	                        <span class="mr-2 icon-add"></span>로그아웃</a> 
	                        
	                        <a href="/guhau/member/company/c_mypage.do" class="btn btn-primary border-width-2 d-none d-lg-inline-block">
	                        <span class="mr-2 icon-lock_outline"></span>${auth}</a>
	                  </div>
					</div>

				</div>
			</div>
		</header>

		<!-- HOME  이미지-->
		<section class="section-hero overlay bg-image"
			style="background-image: url('/guhau/asset/images/hero_1.jpg'); min-height: auto; padding-bottom: 6em; padding-top: 3em;" id="home-section">
		

		<section class="site-section">
			<div class="container"
				style="border: 2px solid #EEE; border-radius: 5px; background-color: white;">
				
				<h3>인재 추천</h3>
				<div style="display: flex; padding-top: 10px;">
					<!-- forEach 5명까지만! 이름, 수강클래스, 점수, 이메일, 연락처-->
					<c:forEach items="${recommend}" var="dto">
					<div style="border: 2px dashed black; margin-right: 20px; padding: 10px 10px; width: 200px; height: auto;">
		            	<h3>${dto.m_name}</h3>
		            	<div><b>수강클래스명:</b> ${dto.class_name}</div>
		            	<div><b>연락처:</b> ${dto.m_tel}</div>
		            	<div><b>점수:</b> ${dto.m_class_score}</div>
		            	<div><b>E-mail:</b> ${dto.m_email}</div>
	          		</div>
	          		</c:forEach>
	          		<!-- /forEach -->
				</div>
				
				<hr>
				
				<div style="display: flex;">
					<table style="width: 1106px;">
						<tr id="tr1" style="justify-content: space-between; text-align: center;">
							<td><input type="radio" name="asd" id="a1" class="qwe" style="display: none;" value="1"><label for="a1" class="aa1"><span style="display:inline-block; width:150px;">최신 공고</span></label></td>
							<td><input type="radio" name="asd" id="a2" class="qwe" style="display: none;" value="2"><label for="a2" class="aa1"><span style="display:inline-block; width:150px;">게재중인 공고</span></label></td>
							<td><input type="radio" name="asd" id="a3" class="qwe" style="display: none;" value="3"><label for="a3" class="aa1"><span style="display:inline-block; width:150px;">마감된 공고</span></label></td>
						</tr>
					</table>
				</div>
			</div>
				
			
			
			<div class="container" id="zxc1" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none; background-color: white; padding-top: 10px;">
				<!-- forEach -->
				<c:if test="${joblist.size() == 0}">
					<div id="detail">공고가 없습니다.</div>
				</c:if>
				<c:forEach items="${joblist}" var="dto">
						 <div id="detail">
							<div class="job-listings d-block d-sm-flex pb-3 pb-sm-0 align-items-center mInfo" style="margin-bottom: 10px;" data-seq="${dto.emp_seq}">
								<div class="job-listing-logo">
									<img src="images/apps.png" class="img-logo">
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
									<div
										class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										지원자: ${dto.countemp}명
									</div>
								</div>
							</div>
								
						</div>
					</c:forEach>
				<!-- /forEach -->
			</div>
			<div class="container" id="zxc2" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none; background-color: white;">
				<c:if test="${jobnowlist.size() == 0}">
					<div id="detail">공고가 없습니다.</div>
				</c:if>
				<c:forEach items="${jobnowlist}" var="dto">
						 <div id="detail">
							<div class="job-listings d-block d-sm-flex pb-3 pb-sm-0 align-items-center mInfo" style="margin-bottom: 10px;" data-seq="${dto.emp_seq}">
								<div class="job-listing-logo">
									<img src="images/apps.png" class="img-logo">
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
									<div
										class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										지원자: ${dto.countemp}명
									</div>
								</div>
							</div>
								
						</div>
					</c:forEach>
			</div>
			<div class="container" id="zxc3" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none; background-color: white;">
				 <c:if test="${jobendlist.size() == 0}">
						<div id="detail">공고가 없습니다.</div>
					</c:if>
				 <c:forEach items="${jobendlist}" var="dto">
						 <div id="detail" class="mInfo">
							<div class="job-listings d-block d-sm-flex pb-3 pb-sm-0 align-items-center mInfo" style="margin-bottom: 10px;" data-seq="${dto.emp_seq}">
								<div class="job-listing-logo">
									<img src="images/apps.png" class="img-logo">
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
									<div
										class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
										지원자: ${dto.countemp}명
									</div>
								</div>
							</div>
								
						</div>
					</c:forEach>
					
			</div>
			
		</section>
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
	<script src="/guhau/asset/js/bootstrap-select.min.js"></script>
	<script src="/guhau/asset/js/custom.js"></script>
	
	<!-- 추가 JS -->
 	<script>
		$('input[type=radio][name=asd]').on('click', function() {

			var chkValue = $('input[type=radio][name=asd]:checked').val();

			if (chkValue == '1') {

				$('#zxc1').css('display', 'block');

				$('#zxc2').css('display', 'none');
				$('#zxc3').css('display', 'none');


			} else if (chkValue == '2') {

				$('#zxc2').css('display', 'block');
				
				$('#zxc1').css('display', 'none');
				$('#zxc3').css('display', 'none');


			} else if (chkValue == '3') {

				$('#zxc3').css('display', 'block');
				
				$('#zxc1').css('display', 'none');
				$('#zxc2').css('display', 'none');


			}

		});
		
	</script>
	
	<script>
		//우선 이름만 	

		
		
		
			

			
	</script>

</body>
</html>










