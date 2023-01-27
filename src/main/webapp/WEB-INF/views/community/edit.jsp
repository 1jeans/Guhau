<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<style>
	table {
		width: 760px;
	}
	table th {
		width: 120px;
	}
	table td {
		width: 640px;
	}	
	#title {
		display: block;
		width: 630px;
	}
	#txt {
		display: block;
		width: 630px;
		height: 200px;
	}
	
</style>
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
  <c:if test="${authseq == '1'}">
		<%@ include file="../../inc/header_general.jsp" %>
		</c:if>
		<c:if test="${authseq == '2'}">
		<%@ include file="../../inc/header_company.jsp" %>
		</c:if>
		<c:if test="${authseq == null}">
		<%@ include file="../../inc/header_no.jsp" %>
		</c:if>

    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="custom-breadcrumbs mb-0">
              <span class="slash">Posted by</span> Admin</a> 
              <span class="mx-2 slash">&bullet;</span>
              <span class="text-white"><strong>April 15, 2019</strong></span>
            </div>
            <h1 class="text-white">커뮤니티</h1>
            
            
          </div>
        </div>
      </div>
    </section>

    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-content">
          	
          	
          	<h3>GUHAEU 커뮤니티글</h3>
          	
          	<hr>
          	
          	<!-- pstat.setString(1, dto.getComm_cate());
			pstat.setString(2, dto.getComm_title());
			pstat.setString(3, dto.getComm_txt());
			pstat.setString(4, dto.getM_id());
			pstat.setString(5, dto.getDuty_seq()); -->
          	
			<h3>커뮤니티글 수정하기</h3>
			<form method="POST" action="/guhau/community/editok.do">
				<table border="1">
				<tr>
					<th>카테고리</th>
					<td>
					 <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region" name="cate" id="cate" required>
                    <option value="0" selected>전체</option>
	               <option value="1">자유</option>
	               <option value="2">회사생활</option>
	               <option value="3">취업/이직</option> 
                  </select>
					
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" id="title" required value="${dto.comm_title}"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="txt" id="txt" required>${dto.comm_txt}</textarea></td>
				</tr>
				<tr>
					<th>직무</th>
					<td>
					<select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region" name="duty" id="duty" required>
                    <option value="0" selected>전체</option>
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
	               <option value="17">연구/RD</option>
	               <option value="18">교육</option>
	               <option value="19">미디어/문화/스포츠</option>
	               <option value="20">금융/보험</option>
	               <option value="21">공공/복지</option>
                  </select>
					</td>
				</tr>
			</table>
			
			<hr>
			
			<div class="btns">
				<input type="button" value="돌아가기" onclick="location.href='/guhau/community/view.do?seq=${dto.comm_seq}'">
				
				<button type="submit">
							<i class="fa-solid fa-comments"></i>
							수정하기
				</button>
			</div>
			
			<!-- 글번호 넘기기 -->
			<input type="hidden" name="comm_seq" value="${dto.comm_seq}">
            </form>
            

            <!-- <div class="pt-5">
              <h3 class="mb-5">6 Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_2.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jacob Smith</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_3.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Chris Meyer</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_5.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Chintan Patel</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>Jean Doe</h3>
                            <div class="meta">January 9, 2018 at 2:21pm</div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard bio">
                                  <img src="images/person_4.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>Ben Afflick</h3>
                                  <div class="meta">January 9, 2018 at 2:21pm</div>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                  <p><a href="#" class="reply">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="vcard bio">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply">Reply</a></p>
                  </div>
                </li>
              </ul>
              END comment-list
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn btn-primary btn-md">
                  </div>

                </form>
              </div>
            </div>

          </div>
          <div class="col-lg-4 sidebar pl-lg-5">
            <div class="sidebar-box">
              <form action="#" class="search-form">
                <div class="form-group">
                  <span class="icon fa fa-search"></span>
                  <input type="text" class="form-control form-control-lg" placeholder="Type a keyword and hit enter">
                </div>
              </form>
            </div>
            <div class="sidebar-box">
              <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4 w-50 rounded-circle">
              <h3>About The Author</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
              <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
            </div>

            <div class="sidebar-box">
              <div class="categories">
                <h3>Categories</h3>
                <li><a href="#">전체 <span>(12)</span></a></li>
                <li><a href="#">자유 <span>(22)</span></a></li>
                <li><a href="#">회사생활 <span>(37)</span></a></li>
                <li><a href="#">취업이직 <span>(42)</span></a></li>
              </div>
            </div>
            

            <div class="sidebar-box">
              <h3>Paragraph</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <footer class="site-footer">

      <a href="#top" class="smoothscroll scroll-top">
        <span class="icon-keyboard_arrow_up"></span>
      </a>

      <div class="container">
        <div class="row mb-5">
          <div class="col-6 col-md-3 mb-4 mb-md-0">
            <h3>Search Trending</h3>
            <ul class="list-unstyled">
              <li><a href="#">Web Design</a></li>
              <li><a href="#">Graphic Design</a></li>
              <li><a href="#">Web Developers</a></li>
              <li><a href="#">Python</a></li>
              <li><a href="#">HTML5</a></li>
              <li><a href="#">CSS3</a></li>
            </ul>
          </div>
          <div class="col-6 col-md-3 mb-4 mb-md-0">
            <h3>Company</h3>
            <ul class="list-unstyled">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Career</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Resources</a></li>
            </ul>
          </div>
          <div class="col-6 col-md-3 mb-4 mb-md-0">
            <h3>Support</h3>
            <ul class="list-unstyled">
              <li><a href="#">Support</a></li>
              <li><a href="#">Privacy</a></li>
              <li><a href="#">Terms of Service</a></li>
            </ul>
          </div>
          <div class="col-6 col-md-3 mb-4 mb-md-0">
            <h3>Contact Us</h3>
            <div class="footer-social">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-instagram"></span></a>
              <a href="#"><span class="icon-linkedin"></span></a>
            </div>
          </div>
        </div>

        <div class="row text-center">
          <div class="col-12">
            <p class="copyright"><small>
              Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</small></p>
          </div>
        </div>
      </div>
    </footer>
  
  </div> -->

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
   	
   		$('#cate').val('${dto.comm_cate}');
   		$('#duty').val('${dto.duty_seq}');
   	
   	</script>
   
     
  </body>
</html>