<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
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
      
      <!-- HOME  이미지-->
      <section class="section-hero overlay inner-page bg-image"
         style="background-image: url('/guhau/asset/images/hero_1.jpg');"
         id="home-section"></section>
         
		
		
      <section class="site-section">
         <div class="container"
            style="border: 2px solid #EEE; border-radius: 5px;">
            <div class="row align-items-center mb-5">
               <div class="col-lg-8 mb-4 mb-lg-0">
                  <div class="d-flex align-items-center">
                     <div class="border p-2 d-inline-block mr-3 rounded">
                     
                        <!-- 회원이미지 -->
                        <img src="/guhau/asset/images/${dto.m_pic}" style="width: 170px;" alt="Image">
                     </div>
                     <div>
                        <h2>
                        
                        <!-- let gen = ${gender}; -->
                           ${dto.m_name}&nbsp&nbsp<span style="font-size: 0.8rem; opacity: 0.8;">${dto.m_gender == 'm' ? '남자' : '여자'}</span>
                        </h2>

                        <div class="ml-0 mr-2 mb-2">
                           이메일 : <span>${dto.m_email}</span>
                        </div>
                        <div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
                           휴대폰 : <span>${dto.m_tel}</span>
                        </div>
                        <div class="ml-0 mr-2 mb-2" style="margin: 0px 8px 8px 0px;">
                           주 소 : <span>${dto.m_address}</span>
                        </div>

                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="row">
                     <div class="col-6">
                        <a href="#" class="btn btn-block btn-light btn-md" onclick='unregister();'>탈퇴하기</a>
                     </div>
                     <div class="col-6">
                        <a href="/guhau/member/general/info_edit.do" class="btn btn-block btn-primary btn-md">수정하기</a>
                     </div>
                  </div>
               </div>
            </div>

            <div style="display: flex;">
               <table style="width: 1106px;">
                  <tr id="tr1"
                     style="justify-content: space-between; text-align: center;">
                     <td><input type="radio" name="asd" id="a1" class="qwe" style="display: none;" value="1"><label for="a1" class="aa1"><span>이력서</span></label></td>
                     <td><input type="radio" name="asd" id="a2" class="qwe" style="display: none;" value="2"><label for="a2" class="aa1"><span>지원현황</span></label></td>
                     <td><input type="radio" name="asd" id="a3" class="qwe" style="display: none;" value="3"><label for="a3" class="aa1"><span>관심태그</span></label></td>
                     <td><input type="radio" name="asd" id="a4" class="qwe" style="display: none;" value="4"><label for="a4" class="aa1"><span>클래스</span></label></td>
                  </tr>
               </table>
            </div>
         </div>


         <!-- 이력서 -->
         <div class="container" id="zxc1"
            style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">


            <!-- 이력서 작성하기 -->
            <section class="site-section services-section bg-light block__62849" id="next-section" style="padding-top: 30px; padding-bottom: 0;">
               <div class="container">

                  <div class="row">
                     <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

                        <!-- form으로? -->
                        <a href="/guhau/member/general/resume.do" class="block__16443 text-center d-block"> <span class="custom-icon mx-auto"><span class="icon-line-tools d-block"></span></span>
                           <h3>새이력서 작성하기</h3>
                           <p>+</p>
                        </a>

                     </div>
                     <!-- 기존 이력서 -->
                     
                     <c:forEach items="${rlist}" var="rdto" begin = "1" end = "3">
                     
                     <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">

                        <a href="/guhau/member/general/resume_check.do" class="block__16443 text-center d-block"> <span class="custom-icon mx-auto">
                        <span class="icon-line-book-open d-block"></span></span>
                           <h3>${dto.m_name}</h3>
                           <p>최근 작성: 2023-01-09</p>
                        </a>
                     </div>
                     </c:forEach>
                  </div>
               </div>
            </section>
         </div>

         <!-- 지원현황 -->
         
         <div class="container" id="zxc2" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none; padding-top: 15px;">
            <div style="display: flex; margin-bottom: 12px;">
                <div style="width: 700px;"><div style="text-align: center; padding-right: 220px; font-size: 1.1rem;"><Strong>지원한 공고 제목</Strong></div></div>
                <div style="width: 200px;"><span style="float: right; font-size: 1.1rem;"><Strong>지원한 날짜</Strong></span></div>
                <div style="width: 200px;"><span style="float: right; font-size: 1.1rem;"><Strong>공고 종료 날짜</Strong></span></div>
            </div>
            
            <ul>
            
            <c:forEach items="${list}" var="dto">
               <li style="margin-bottom: 10px;">
                  <div style="display: flex;">
                     <div style="width: 700px;"><a href="#" style="color: #7F848C;">${fn:substring(dto.emp_title, 0, 20)}</a></div>
                     <div style="width: 200px;"><span style="float: right;">${fn:substring(dto.m_emp_date, 0, 10)}</span></div>
                     <div style="width: 200px;"><span style="float: right;">${fn:substring(dto.emp_deadline, 0, 10)}</span></div>
                  </div>
               </li>
              </c:forEach>
            </ul>
            
                     
                     
         </div>


         <!-- 관심태그 -->
         <!-- 관심태그 -->
         <div class="container" id="zxc3" style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
            <form class="p-4 p-md-5 border rounded" method="post" action="/guhau/member/general/membertagok.do">
            <!-- jstl -->
            <h2>나의 관심태그</h2>
            <c:forEach items="${taglist}" var="dto">
               <input class="btn btn-primary btn-sm" type="text" readonly="readonly" value="${dto.tag_name}">
            </c:forEach>
            <div style="display: flex; justify-content: space-between; margin-top: 10px;">
                <select name="tag_name" class="select">
                   <option disabled selected>선택하세요.</option>
                    <option value="1">Java</option>
                    <option value="2">Html</option>
                    <option value="3">Ajax</option>
                    <option value="4">Css</option>
                    <option value="5">React</option>
                    <option value="6">Python</option>
                    <option value="7">JavaScript</option>
                    <option value="8">Node.js</option>
                    <option value="9">Excel</option>
                    <option value="10">Web Publish</option>
                </select> 
            <input type="submit" class="btn btn-primary btn-sm" value="저장하기">
            </div>
            </form>
         </div>


         <!-- 클래스 -->
         <div class="container" id="zxc4"
            style="border: 2px solid #EEE; border-radius: 5px; margin: 15px auto; display: none;">
            <h1 class="font-weight-bold">Scrap Class</h1>
            <div class="container">
               <div class="row mb-5">
                  <div class="container">
               <div class="row mb-5">
                  <c:forEach items="${gcdto}" var="gcdto">
                     <div class="col-md-6 col-lg-4 mb-5">
                        <a
                           href="/guhau/classes/classesdetail.do?class_seq=${gcdto.class_seq}">
                           <img src="/guhau/asset/images/${gcdto.class_pic}" alt="Image"
                           class="img-fluid rounded mb-4">
                        </a>
                        <h3>
                           <a
                              href="/guhau/classes/classesdetail.do?class_seq=${gcdto.class_seq}"
                              class="text-black">${gcdto.class_name}</a>
                        </h3>
                        <div>April 15, 2019</div>
                     </div>
                  </c:forEach>
               </div>
            </div>
                  
               </div>
            </div>
            <!-- <h1 class="font-weight-bold">Ing Class</h1>
            <div class="container">
               <div class="row mb-5">
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_2.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">How to Write a
                           Creative Cover Letter</a>
                     </h3>
                     <div>
                        April 15, 2019
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_2.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">How to Write a
                           Creative Cover Letter</a>
                     </h3>
                     <div>
                        April 15, 2019
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_4.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">The Right Way
                           to Quit a Job You Started</a>
                     </h3>
                     <div>
                        April 15, 2019
                     </div>
                  </div>


               </div>
            </div>
            <h1 class="font-weight-bold">End Class</h1>
            <div class="container">
               <div class="row mb-5">
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_2.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">How to Write a
                           Creative Cover Letter</a>
                     </h3>
                     <div>
                        April 15, 2019 <span class="mx-2">|</span> 획득점수: 
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_2.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">How to Write a
                           Creative Cover Letter</a>
                     </h3>
                     <div>
                        April 15, 2019 <span class="mx-2">|</span> 획득점수:
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-4 mb-5">
                     <a href="blog-single.html"><img
                        src="/guhau/asset/images/sq_img_4.jpg" alt="Image"
                        class="img-fluid rounded mb-4"></a>
                     <h3>
                        <a href="blog-single.html" class="text-black">The Right Way
                           to Quit a Job You Started</a>
                     </h3>
                     <div>
                        April 15, 2019 <span class="mx-2">|</span> 획득점수:
                     </div>
                  </div> -->

						 <input type="hidden" name="id" value="\${id}">
               </div>
            </div>
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

	
	
	
	
	<script>
	    function unregister() {
	        if (!confirm("정말 지울겁니까.")) {
	            alert("취소(아니오)를 누르셨습니다.");
	        } else {
	        	location = '/guhau/member/unregisterok.do';
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
      /* var input = document.querySelector('input[name=tag_name]'),
       // init Tagify script on the above inputs
       tagify = new Tagify(input, {
           whitelist : ["java","html","ajax","css","react","python","javascript","node.js","Excel","Web Publish"],
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
       } */
   </script>

</body>
</html>









