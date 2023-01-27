
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>

<html lang="en">
  <head>
    <title>GuHaeU</title>
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
    
    
    
    

    <!-- MAIN CSS -->
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
    

    <!-- NAVBAR -->
  

    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            
            <h1 class="text-white">커뮤니티</h1>
            
            
          </div>
        </div>
      </div>
    </section>
  
              <hr>
              
              <div id="search">
                 <form method="GET" action="/guhau/community/ccommunity_view.do">
                 <table>
                    <tr>
                       <td>                
                          <select name="column" id="column" style="width: 150px; height:50px">
                             <option value="comm_title">제목</option>
                             <option value="comm_txt">내용</option>
                             <option value="m_name">이름</option>                                                                                    
                          </select>
                       </td>
                       <td>
                          <input type="text" name="word" id="word" required style="width: 550px; height:50px">
                       </td>
                       <td>
                          <button type="submit" style="width: 150px; height:50px;">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        검색하기
                     </button>
                     <button type="button" onclick="location.href='/guhau/community/ccommunity_view.do';" style="width: 150px; height:50px">
                        <i class="fa-solid fa-list"></i>
                        검색취소
                     </button>
                       </td>
                    </tr>
                 </table>
                 </form>
              </div>
              
              
                
             
     <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-content"> 
             
             <h3>GUHAEU 커뮤니티글</h3>
                               
         <table border="1" style="border: 1px #a39485 solid; ont-size: .9em; box-shadow: 0 2px 5px rgba(0,0,0,.25); width: 100%;  border-collapse: collapse;  border-radius: 10px;">
            <tr>
               <th>번호</th>
               <th>제목</th>
               <th>내용</th>
               <th>날짜</th>
               <th>조회수</th>
               <th>이름</th>               
            </tr>
             <c:forEach items="${list}" var="dto">
            <tr>           
               <td>${dto.comm_seq}</td>   
               <td><a href="/guhau/community/view.do?comm_seq=${dto.comm_seq}">${dto.comm_title}</a></td>   
                        
               <%-- <td>${dto.comm_title}</td> --%>
               <td>${dto.comm_txt}</td>
               <td>${dto.comm_date}</td>
               <td>${dto.comm_count}</td>
               <td>${dto.m_name}</td>                               
            </tr>
            </c:forEach>         
         </table>
         
            <hr>
            
            
            <div class="pt-5">
              <ul class="comment-list">
                
            </div>

          </div>
           <div class="col-lg-4 sidebar pl-lg-5">
            
            <div class="sidebar-box">
              <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4 w-50 rounded-circle">
              <h3>About The Author</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
              <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
            </div>
            
            
            

            <div class="sidebar-box">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
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
         $('#column').val('${map.column}');
         $('#word').val('${map.word}');
   </script>
   
   
     
  </body>
</html>







