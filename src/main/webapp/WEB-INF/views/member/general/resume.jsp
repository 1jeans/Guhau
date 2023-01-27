<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


      

      <!-- HOME -->
      <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section"></section>

      <section class="site-section">
         <div class="container">

            <div class="row mb-5">
               <div class="col-lg-12">
               
               <!-- form  -->
                  <form class="p-4 p-md-5 border rounded" method="post" action="/guhau/member/general/resumok.do" id="ppp">


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
                        <input type="text" class="form-control" id="email" placeholder="간단한 자기소개를 통해 이력서를 돋보이게 만들어보세요." name='resume_intro' style="border: 0px; color: black; opacity: 0.8; font-size: 0.85rem;">
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
                           <select name="resume_school" class="select">
                              <option disabled selected>선택하세요.</option>
                              <option value="대학교 (졸업)">대학교 (졸업)</option>
                              <option value="대학교 (중퇴)">대학교 (중퇴)</option>
                              <option value="고등학교 (졸업)">고등학교 (졸업)</option>
                              <option value="고등학교 (중퇴)">고등학교 (중퇴)</option>
                           </select> 
                           <span class="icoArrow"></span>
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
                           <input type="text" name= 'resume_skill' placeholder="보유하신 스킬 작성(모두 작성)" style="font-size: .8rem; color: black; opacity: 0.8;">
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
                              <li style="font-size: .6rem;">가장 최근의 경력을 입력해주세요.</li>
                           </ul>
                        </div>
                     </div>


                     <select name="cdata_seq" class="select" style="margin-right: 10px; height: 40px;">
                        <option disabled selected>회사명</option>
	                        <option value="1">삼성</option>
	                        <option value="2">LG</option>
	                        <option value="3">애플</option>
                     </select>  
                     
                     <select name="duty_name" class="select"
                        style="margin-right: 10px; height: 40px;">
                        <option disabled selected>직무</option>
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
                        <option value="17">연구/RnD</option>
                        <option value="18">교육</option>
                        <option value="19">미디어/문화/스포츠</option>
                        <option value="20">금융/보험</option>
                        <option value="21">공공/복지</option>
                     </select> 
                     
                     <input type="date" class = "date" name = "carrer_startdate" style="margin-right: 10px; width: 145px; height: 40px;">
                     <input type="date" class = "date" name = "carrer_enddate" style="margin-right: 10px; width: 145px; height: 40px;">
                     
                     
                     <!-- <input type="button" id="p" value="추가하기" style="width: 100px; height: 50px; margin-bottom: 10px;"> -->
					 
					 <div class="row align-items-center mb-5">

		               <div class="col-lg-4 ml-auto">
		                  <div class="row">
		                     <div class="col-6">
		                        <a href="#" class="btn btn-block btn-light btn-md"><span class="icon-open_in_new mr-2"></span>뒤로가기</a>
		                     </div>
		                     <div class="col-6">
		                        <input type="submit" class="btn btn-block btn-primary btn-md" value="추가하기">
		                     </div>
		                  </div>
		               </div>
		            </div>

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


   <script>
   
      $(document).ready(function() {
         var i=1; // 변수설정은 함수의 바깥에 설정
        $("#p").click(function() {
          
          $("#ppp").append("<div style='border: 1px solid black; margin-bottom: 10px;'>등장" +i+ "</div>");
          
          i++; // 함수 내 하단에 증가문 설정
          
   
        });
      });
      
   </script>


</body>
</html>

































