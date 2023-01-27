<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<style>
	.qwe:checked + .aa1 {
        background-color: #113a6b;
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


<link rel="stylesheet" href="css/custom-bs.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="css/bootstrap-select.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/line-icons/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/animate.min.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="css/style.css">
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
							<li><a href="index.jsp" class="nav-link active">채용</a></li>
							<li><a href="about.html">클래스</a></li>
							<li class="has-children"><a href="job-listings.html">기업리뷰</a>
								<ul class="dropdown">
									<li><a href="job-single.html">Job Single</a></li>
									<li><a href="post_job.jsp">Post a Job</a></li>
								</ul></li>
							<li class="has-children"><a href="class.jsp">커뮤니티</a>
								<ul class="dropdown">
									<li><a href="services.html">Services</a></li>
									<li><a href="service-single.html">Service Single</a></li>
								</ul></li>
							<li class="d-lg-none"><a href="post_job.jsp"><span
									class="mr-2">+</span> Post a Job</a></li>
							<li class="d-lg-none"><a href="login.jsp">Log In</a></li>
						</ul>
					</nav>

					<div
						class="right-cta-menu text-right d-flex aligin-items-center col-6">
						<div class="ml-auto">
							<a href="post_job.jsp"
								class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"><span
								class="mr-2 icon-add"></span>로그아웃</a> <a href="login.jsp"
								class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span
								class="mr-2 icon-lock_outline"></span>안성식</a>
						</div>
						<!--           <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a> -->
					</div>

				</div>
			</div>
		</header>

		<!-- HOME  이미지-->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('images/hero_1.jpg');" id="home-section">
		</section>

		<section class="site-section">
			<div class="container"
				style="border: 2px solid #EEE; border-radius: 5px;">
				<div class="row align-items-center mb-5">
					<div class="col-lg-8 mb-4 mb-lg-0">
						<div class="d-flex align-items-center">
							<div class="border p-2 d-inline-block mr-3 rounded">
								<!-- 회원이미지 -->
								<img src="images/man_01.png" alt="Image">
							</div>
							<div>
								<h2>
									안성식(이름)<span>성별</span>
								</h2>

								<div class="ml-0 mr-2 mb-2">
									이메일 : <span>출력값</span>
								</div>
								<div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
									휴대폰 : <span>출력값</span>
								</div>
								<div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
									주 소 : <span>출력값</span>
								</div>

							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="row">
							<div class="col-6">
								<a href="#" class="btn btn-block btn-light btn-md">탈퇴하기</a>
							</div>
							<div class="col-6">
								<a href="#" class="btn btn-block btn-primary btn-md">수정하기</a>
							</div>
						</div>
					</div>
				</div>

				<div style="display: flex;">
					<table style="width: 1106px;">
						<tr id="tr1" style="justify-content: space-between; text-align: center;">
							<td><input type="radio" name="asd" id="a1" class="qwe" style="display: none;" value="1"><label for="a1" class="aa1"><span>이력서</span></label></td>
							<td><input type="radio" name="asd" id="a2" class="qwe" style="display: none;" value="2"><label for="a2" class="aa1"><span>지원현황</span></label></td>
							<td><input type="radio" name="asd" id="a3" class="qwe" style="display: none;" value="3"><label for="a3" class="aa1"><span>관심태그</span></label></td>
							<td><input type="radio" name="asd" id="a4" class="qwe" style="display: none;" value="4"><label for="a4" class="aa1"><span>클래스</span></label></td>
						</tr>
					</table>
				</div>
			</div>
				
			
			
			<div class="container" id="zxc1" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				<p>1번글자</p>
			</div>
			<div class="container" id="zxc2" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				<p>2번글자</p>
			</div>
			<div class="container" id="zxc3" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				 <p>3번글자</p>
			</div>
			<div class="container" id="zxc4" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				<p>4번글자</p>
			</div>
			
		</section>
	</div>


	<!-- SCRIPTS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/stickyfill.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>

	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>

	<script src="js/bootstrap-select.min.js"></script>

	<script src="js/custom.js"></script>
	
	<!-- 추가 JS -->
 	<script>
		$('input[type=radio][name=asd]').on('click', function() {

			var chkValue = $('input[type=radio][name=asd]:checked').val();

			if (chkValue == '1') {

				$('#zxc1').css('display', 'block');

				$('#zxc2').css('display', 'none');
				$('#zxc3').css('display', 'none');
				$('#zxc4').css('display', 'none');


			} else if (chkValue == '2') {

				$('#zxc2').css('display', 'block');
				
				$('#zxc1').css('display', 'none');
				$('#zxc3').css('display', 'none');
				$('#zxc4').css('display', 'none');


			} else if (chkValue == '3') {

				$('#zxc3').css('display', 'block');
				
				$('#zxc1').css('display', 'none');
				$('#zxc2').css('display', 'none');
				$('#zxc4').css('display', 'none');


			} else if (chkValue == '4') {
				
				$('#zxc4').css('display', 'block');
				
				$('#zxc1').css('display', 'none');
				$('#zxc2').css('display', 'none');
				$('#zxc3').css('display', 'none');

			}

		});
		
	</script>

</body>
</html>










