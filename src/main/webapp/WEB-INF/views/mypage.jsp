<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<style>
	.qwe:checked+.aa1 {
		background-color: #113a6b;
		color: #ffffff;
	}
	
	.aa1:hover {
		cursor: pointer;
		color: cornflowerblue;
	}
	
	
	/* tag css */
	.customSuggestionsList>div {
		max-height: 300px;
		min-height: 50px;
		border: 2px solid pink;
		overflow: auto;
	}
	
	.customSuggestionsList .empty {
		color: #999;
		font-size: 20px;
		text-align: center;
		padding: 1em;
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


<link rel="stylesheet" href="/guhau/asset/css/tagify.css">

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
			style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
		</section>

		<section class="site-section">
			<div class="container"
				style="border: 2px solid #EEE; border-radius: 5px;">
				<div class="row align-items-center mb-5">
					<div class="col-lg-8 mb-4 mb-lg-0">
						<div class="d-flex align-items-center">
							<div class="border p-2 d-inline-block mr-3 rounded">
								<!-- 회원이미지 -->
								<img src="/guhau/asset/images/man_01.png" alt="Image">
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
				
				
			<!-- 이력서 작성하기 -->
			 <section class="site-section services-section bg-light block__62849" id="next-section" style="padding-top: 30px; padding-bottom: 0;">
		      <div class="container">
		        
		        <div class="row">
		          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
		
		            <a href="post_job_1.jsp" class="block__16443 text-center d-block">
		              <span class="custom-icon mx-auto"><span class="icon-line-tools d-block"></span></span>
		              <h3>새이력서 작성하기</h3>
		              <p>+</p>
		            </a>
		
		          </div>
		          <!-- 기존 이력서 -->
		          <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
		            
		            <a href="service-single.html" class="block__16443 text-center d-block">
		              <span class="custom-icon mx-auto"><span class="icon-line-book-open d-block"></span></span>
		              <h3>이름</h3>
		              <p>yyyy-mm-dd</p>
		            </a>            
		          </div>
		        </div>
		      </div>
		    </section> 
			</div>
			
			
			<div class="container" id="zxc2" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none; padding-top: 15px;">
				<ul>
					<!-- for문 -->
					<li style="margin-bottom: 10px;">
						<div style="display: flex;">
							<div style="width: 800px;"><a href="#" style="color: #7F848C;">공고는 공고를 위하여 공고를 공고한다.공고는 공고를 위하여 공고를 공고한다.</a></div>
							<div style="width: 230px;"><span style="float: right;">2021.10.04 15:24</span></div>
							<div style="width: 36px;"><span style="float: right;">X</span></div>
						</div>
					</li>
				</ul>
			</div>
			
			
			
			<div class="container" id="zxc3" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				 <input name='tags-manual-suggestions' placeholder='write some tags'>
			</div>
			<div class="container" id="zxc4" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
				<p>4번글자</p>
			</div>
			
		</section>
	</div>


	<!-- SCRIPTS -->
	<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
	<script src="/guhau/asset/js/jQuery.tagify.min.js"></script>
	
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
	
	<!-- tag 스크립트 -->
	<script>
		var input = document.querySelector('input[name=tags-manual-suggestions]'),
	    // init Tagify script on the above inputs
	    tagify = new Tagify(input, {
	        whitelist : ["A# .NET", "A# (Axiom)", "A-0 System", "A+", "A++", "ABAP", "ABC", "ABC ALGOL", "ABSET", "ABSYS", "ACC", "Accent", "Ace DASL", "ACL2", "Avicsoft", "ACT-III", "Action!", "ActionScript", "Ada", "Adenine", "Agda", "Agilent VEE", "Agora", "AIMMS", "Alef", "ALF", "ALGOL 58", "ALGOL 60", "ALGOL 68", "ALGOL W", "Alice", "Alma-0", "AmbientTalk", "Amiga E", "AMOS", "AMPL", "Apex (Salesforce.com)", "APL", "AppleScript", "Arc", "ARexx", "Argus", "AspectJ", "Assembly language", "ATS", "Ateji PX", "AutoHotkey", "Autocoder", "AutoIt", "AutoLISP / Visual LISP", "Averest", "AWK", "Axum", "Active Server Pages", "ASP.NET", "B", "Babbage", "Bash", "BASIC", "bc", "BCPL", "BeanShell", "Batch (Windows/Dos)", "Bertrand", "BETA", "Bigwig", "Bistro", "BitC", "BLISS", "Blockly", "BlooP", "Blue", "Boo", "Boomerang", "Bourne shell (including bash and ksh)", "BREW", "BPEL", "B", "C--", "C++ – ISO/IEC 14882", "C# – ISO/IEC 23270", "C/AL", "Caché ObjectScript", "C Shell", "Caml", "Cayenne", "CDuce", "Cecil", "Cesil", "Céu", "Ceylon", "CFEngine", "CFML", "Cg", "Ch", "Chapel", "Charity", "Charm", "Chef", "CHILL", "CHIP-8", "chomski", "ChucK", "CICS", "Cilk", "Citrine (programming language)", "CL (IBM)", "Claire", "Clarion", "Clean", "Clipper", "CLIPS", "CLIST", "Clojure", "CLU", "CMS-2", "COBOL – ISO/IEC 1989", "CobolScript – COBOL Scripting language", "Cobra", "CODE", "CoffeeScript", "ColdFusion", "COMAL", "Combined Programming Language (CPL)", "COMIT", "Common Intermediate Language (CIL)", "Common Lisp (also known as CL)", "COMPASS", "Component Pascal", "Constraint Handling Rules (CHR)", "COMTRAN", "Converge", "Cool", "Coq", "Coral 66", "Corn", "CorVision", "COWSEL", "CPL", "CPL", "Cryptol", "csh", "Csound", "CSP", "CUDA", "Curl", "Curry", "Cybil", "Cyclone", "Cython", "Java", "Javascript", "M2001", "M4", "M#", "Machine code", "MAD (Michigan Algorithm Decoder)", "MAD/I", "Magik", "Magma", "make", "Maple", "MAPPER now part of BIS", "MARK-IV now VISION:BUILDER", "Mary", "MASM Microsoft Assembly x86", "MATH-MATIC", "Mathematica", "MATLAB", "Maxima (see also Macsyma)", "Max (Max Msp – Graphical Programming Environment)", "Maya (MEL)", "MDL", "Mercury", "Mesa", "Metafont", "Microcode", "MicroScript", "MIIS", "Milk (programming language)", "MIMIC", "Mirah", "Miranda", "MIVA Script", "ML", "Model 204", "Modelica", "Modula", "Modula-2", "Modula-3", "Mohol", "MOO", "Mortran", "Mouse", "MPD", "Mathcad", "MSIL – deprecated name for CIL", "MSL", "MUMPS", "Mystic Programming L"],
	        dropdown: {
	            position: "manual",
	            maxItems: Infinity,
	            enabled: 0,
	            classname: "customSuggestionsList"
	        },
	        templates: {
	            dropdownItemNoMatch() {
	                return `<div class='empty'>Nothing Found</div>`;
	            }
	        },
	        enforceWhitelist: true
	    })
	
	    tagify.on("dropdown:show", onSuggestionsListUpdate)
	          .on("dropdown:hide", onSuggestionsListHide)
	          .on('dropdown:scroll', onDropdownScroll)
	
	    renderSuggestionsList()  // defined down below
	
	    // ES2015 argument destructuring
	    function onSuggestionsListUpdate({ detail:suggestionsElm }){
	        console.log(  suggestionsElm  )
	    }
	
	    function onSuggestionsListHide(){
	        console.log("hide dropdown")
	    }
	
	    function onDropdownScroll(e){
	        console.log(e.detail)
	      }
	
	    // https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentElement
	    function renderSuggestionsList(){
	        tagify.dropdown.show() // load the list
	        tagify.DOM.scope.parentNode.appendChild(tagify.DOM.dropdown)
	    }
	</script>

</body>
</html>










