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
	table tr:nth-child(4) th {
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
            
            <h1 class="text-white">????????????</h1>
            
            
          </div>
        </div>
      </div>
    </section>
	<main>
    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-content">
          	
          	
          	<h3>GUHAEU ???????????????</h3>
          	
          	<hr>
          	
          	<!-- pstat.setString(1, dto.getComm_cate());
			pstat.setString(2, dto.getComm_title());
			pstat.setString(3, dto.getComm_txt());
			pstat.setString(4, dto.getM_id());
			pstat.setString(5, dto.getDuty_seq()); -->
          	
			<h3>???????????????</h3>
			
				<table border="1">
				<tr>
					<th>??????</th>
					<td>${dto.comm_seq}</td>
				</tr>
				<tr>
					<th>????????????</th>
					<td>
					${dto.comm_cate}
					<!--  <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region" name="cate" id="cate">
                    <option value="0" selected>??????</option>
	               <option value="1">??????</option>
	               <option value="2">????????????</option>
	               <option value="3">??????/??????</option> 
                  </select>  -->					
					</td>
				</tr>
				<tr>
					<th>??????</th>
					<td>${dto.comm_title}</td>
				</tr>
				<tr>
					<th>??????</th>
					<td>${dto.comm_txt}</td>
				</tr>
				<tr>
					<th>??????</th>
					<td>
					${dto.duty_name}
					<!-- <select class="selectpicker" data-style="btn-white btn-lg" data-width="100%" data-live-search="true" title="Select Region" name="duty" id="duty">
                    <option value="0" selected>??????</option>
	               <option value="1">??????/??????</option>
	               <option value="2">?????????/??????/??????</option>
	               <option value="3">??????/??????/??????</option>
	               <option value="4">??????/??????/HRD</option>
	               <option value="5">??????/??????/??????</option>
	               <option value="6">it??????/?????????</option>
	               <option value="7">?????????</option>
	               <option value="8">??????/??????/??????</option>
	               <option value="9">????????????/TM</option>
	               <option value="10">??????/??????/??????</option>
	               <option value="11">????????????/MD</option>
	               <option value="12">??????/??????/??????</option>
	               <option value="13">?????????</option>
	               <option value="14">??????</option>
	               <option value="15">??????/??????</option>
	               <option value="16">??????</option>
	               <option value="17">??????/RD</option>
	               <option value="18">??????</option>
	               <option value="19">?????????/??????/?????????</option>
	               <option value="20">??????/??????</option>
	               <option value="21">??????/??????</option>
                  </select> -->
					</td>
				</tr>
				<tr>
					<th>??????</th>
					<td>${dto.comm_date}</td>
				</tr>
				<tr>
					<th>??????</th>
					<td>${dto.m_name}</td>
				</tr>
				<tr>
					<th>?????????</th>
					<td>${dto.comm_count}</td>
				</tr>
			</table>
			
			</div>
			</div>
			</div>
			</section>
			</main>
			
			 <div class="btns">
				<input type="button" value="????????????" onclick="location.href='/guhau/community/community_view.do'">
				
				 <c:if test="${not empty auth and dto.m_id == auth}"> 
				<button type="button" onclick="location.href='/guhau/community/edit.do?comm_seq=${dto.comm_seq}';">
					<i class="fa-solid fa-pen-to-square"></i>
					????????????
				</button>
				
				<button type="button" onclick="location.href='/guhau/community/del.do?comm_seq=${dto.comm_seq}';">
					<i class="fa-solid fa-trash-can"></i>
					????????????
				</button> 
				 </c:if> 
				
				<%-- <c:if test="${not empty auth}">
				<button type="button" onclick="location.href='/toy/board/add.do?reply=y&thread=${dto.thread}&depth=${dto.depth}';">
					<i class="fa-solid fa-comment-dots"></i>
					????????????
				</button> 
				</c:if> --%>
				
			</div> 
           
            

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
                <li><a href="#">?????? <span>(12)</span></a></li>
                <li><a href="#">?????? <span>(22)</span></a></li>
                <li><a href="#">???????????? <span>(37)</span></a></li>
                <li><a href="#">???????????? <span>(42)</span></a></li>
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
   
   
     
  </body>
</html>