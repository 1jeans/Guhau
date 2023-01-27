<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<style>
/* 학력 */
	.selectBox {
		position: relative;
		width: 200px;
		height: 45px;
		border-radius: 4px;
		border: 2px solid black;
	}
	
	.selectBox .select {
		width: inherit;
		height: inherit;
		background: transparent;
		border: 0 none;
		outline: 0 none;
		padding: 0 5px;
		position: relative;
		z-index: 3;
		//
		select가
		위로
		올라와야
		함
	}
	
	.selectBox .select option {
		background: #EEE;
		color: black;
		padding: 3px 0;
		font-size: 16px;
	}
	
	.selectBox .icoArrow img {
		width: 50%;
		transition: .3s;
		//
		부드럽게
		회전
	}
	
	.selectBox .select:focus+.icoArrow img {
		transform: rotate(180deg);
	}
	
	.skillsearch {
		position: relative;
		width: 300px;
	}
	
	input {
		width: 100%;
		border: 1px solid #bbb;
		border-radius: 8px;
		padding: 10px 12px;
		font-size: 14px;
	}
	
	img {
		position: absolute;
		width: 17px;
		top: 10px;
		right: 12px;
		margin: 0;
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
<link rel="stylesheet" href="css/quill.snow.css">


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
								class="mr-2 icon-add"></span>이력서 제출</a> <a href="login.jsp"
								class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span
								class="mr-2 icon-lock_outline"></span>로그인</a>
						</div>
						<a href="#"
							class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
							class="icon-menu h3 m-0 p-0 mt-2"></span></a>
					</div>

				</div>
			</div>
		</header>

		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('images/hero_1.jpg');" id="home-section">

		</section>


		<section class="site-section">
			<div class="container">

				<div class="row mb-5">
					<div class="col-lg-12">
						<form class="p-4 p-md-5 border rounded" method="post" onsubmit="return false">


							<div class="form-group">
								<label for="email">간단소개글</label>
								<hr style="margin: 0px 0px 10px 0px;">
								<div style="background-color: #ECF8FB;">
									<ul>
										<li style="font-size: .6rem;">본인의 업무 경험을 기반으로 핵심역량과 업무
											스킬을 간단히 작성해주세요.</li>
										<li style="font-size: .6rem;">3~5줄 요약하여 작성하는 것을 추천합니다!</li>
									</ul>
								</div>
								<input type="text" class="form-control" id="email"
									placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요."
									style="border: 0px; color: black; opacity: 0.8; font-size: 0.85rem;">
							</div>

							<div class="form-group">
								<label for="job-title">학력</label>
								<hr style="margin: 0px 0px 10px 0px;">
								<div style="background-color: #ECF8FB;">
									<ul>
										<li style="font-size: .6rem;">최신순으로 선택해주세요.</li>
									</ul>
								</div>


								<!-- 위에 style 참고 -->
								<!-- 예시1 -->
								<div class="selectBox">
									<select name="fruits" class="select">
										<option disabled selected>선택하세요.</option>
										<option value="apple">대학교 (졸업)</option>
										<option value="orange">대학교 (중퇴)</option>
										<option value="grape">고등학교 (졸업)</option>
										<option value="melon">고등학교 (중퇴)</option>
									</select> <span class="icoArrow"><img
										src="https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png"
										alt=""></span>
								</div>

							</div>

							<div class="form-group">
								<label for="job-location">스킬</label>
								<hr style="margin: 0px 0px 10px 0px;">
								<div style="background-color: #ECF8FB;">
									<ul>
										<li style="font-size: .6rem;">가지고 있는 직무와 관련된 스킬을 추가해보세요.</li>
										<li style="font-size: .6rem;">스킬을 등록한 구해유 이력서는 일반 이력서에 비해
											서류통과율이 더 높습니다!</li>
									</ul>
								</div>



								<div class="skillsearch">
									<input type="text" placeholder="검색어 입력"> <img
										src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
										style="margin-top: 6px;">
								</div>




							</div>


							<div class="form-group">
								<label for="job-type">경력</label>
								<hr style="margin: 0px 0px 10px 0px;">
								<div style="background-color: #ECF8FB;">
									<ul>
										<li style="font-size: .6rem;">담당하신 업무 중 우선순위가 높은 업무를 선별하여
											최신순으로 작성해주세요.</li>
										<li style="font-size: .6rem;">신입의 경우, 직무와 관련된 인턴, 계약직 경력이
											있다면 기간을 자세히 기재해주세요.</li>
										<li style="font-size: .6rem;">되도록이면 구체적인 직무, 기간을 표현해주세요.</li>
									</ul>
								</div>
							</div>


							<form action="#!" id="pp">
								<select name="fruits" class="select"
									style="margin-right: 10px; height: 40px;">
									<option disabled selected>회사명</option>
									<option value="apple">대학교 (졸업)</option>
									<option value="orange">대학교 (중퇴)</option>
									<option value="grape">고등학교 (졸업)</option>
									<option value="melon">고등학교 (중퇴)</option>
								</select> <select name="fruits" class="select"
									style="margin-right: 10px; height: 40px;">
									<option disabled selected>직무</option>
									<option value="apple">대학교 (졸업)</option>
									<option value="orange">대학교 (중퇴)</option>
									<option value="grape">고등학교 (졸업)</option>
									<option value="melon">고등학교 (중퇴)</option>
								</select> <select name="fruits" class="select"
									style="margin-right: 10px; height: 40px;">
									<option disabled selected>기간</option>
									<option value="apple">대학교 (졸업)</option>
									<option value="orange">대학교 (중퇴)</option>
									<option value="grape">고등학교 (졸업)</option>
									<option value="melon">고등학교 (중퇴)</option>
								</select> <select name="fruits" class="select"
									style="margin-right: 10px; height: 40px;">
									<option disabled selected>기간</option>
									<option value="apple">대학교 (졸업)</option>
									<option value="orange">대학교 (중퇴)</option>
									<option value="grape">고등학교 (졸업)</option>
									<option value="melon">고등학교 (중퇴)</option>
								</select> <input type="submit" id="p" value="추가하기"
									style="width: 100px; height: 50px;" onclick="add();">



							</form>



						</form>
					</div>


				</div>
				<div class="row align-items-center mb-5">

					<div class="col-lg-4 ml-auto">
						<div class="row">
							<div class="col-6">
								<a href="#" class="btn btn-block btn-light btn-md"><span
									class="icon-open_in_new mr-2"></span>뒤로가기</a>
							</div>
							<div class="col-6">
								<a href="#" class="btn btn-block btn-primary btn-md">수정완료</a>
							</div>
						</div>
					</div>
				</div>
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
	<script src="js/quill.min.js"></script>


	<script src="js/bootstrap-select.min.js"></script>

	<script src="js/custom.js"></script>


	<script>
   
         function add() {
            
            var body = document.body;
            var pp = document.getElementById("pp");
            var p = document.getElementById("p");
            
            var newDIV = document.createElement("div");
            newDIV.innerHTML = "하이하이";
            newDIV.setAttribute("id","myDiv");
            newDIV.style.backgroundColor="yellow";
            
            body.pp.appendChild(newDIV);
            body.p.appendChild(newDIV);
            
            
         }
   
   </script>


</body>
</html>


































