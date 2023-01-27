<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!doctype html>
<html lang="en">
  <head>
    <title>Guhau</title>
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
  <style>
  	.btn-md {
  		margin: auto;
  	}
  </style>
  
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
    

    

    <!-- HOME -->
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('/guhau/asset/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">기업리뷰</h1>
          </div>
        </div>
      </div>

    </section>
    <section class="site-section">
      <div class="container">
        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div class="border p-2 d-inline-block mr-3 rounded">
                <img src="/guhau/asset/images/${dto.c_pic}" alt="Image" style="width: 200px; height: 150px;">
              </div>
              <div>
                <h2>${dto.cdata_name}</h2>
                <div>
                  <span class="ml-0 mr-2 mb-2"><span class="icon-briefcase mr-2"></span>${dto.cdata_name}</span>
                  <span class="m-2"><span class="icon-room mr-2"></span>${dto.reg_name}</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
                <a href="cdetail.do?cdata_seq=${dto.cdata_seq}" class="btn btn-primary btn-md">기업소개</a>
                <a href="creview.do?cdata_seq=${dto.cdata_seq}" class="btn btn-primary btn-md">기업리뷰</a>
                <a href="ireview.do?cdata_seq=${dto.cdata_seq}&word=0" class="btn btn-primary btn-md">면접리뷰</a>
                </div>
          </div>
        </div>
        <section class="site-section" id="next-section">
          <div class="container">
            <div class="row">
              <div class="col-lg-8 blog-content">
                <div class="col-lg-8">
                  <div class="mb-5">
                    <h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>기업리뷰</h3>
                  </div>
                </div>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda nihil aspernatur nemo sunt, qui, harum repudiandae quisquam eaque dolore itaque quod tenetur quo quos labore?</p>
                <p><img src="images/job_single_img_1.jpg" alt="Image" class="img-fluid rounded"></p>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae expedita cumque necessitatibus ducimus debitis totam, quasi praesentium eveniet tempore possimus illo esse, facilis? Corrupti possimus quae ipsa pariatur cumque, accusantium tenetur voluptatibus incidunt reprehenderit, quidem repellat sapiente, id, earum obcaecati.</p>

                <blockquote><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident vero tempora aliquam excepturi labore, ad soluta voluptate necessitatibus. Nulla error beatae, quam, facilis suscipit quaerat aperiam minima eveniet quis placeat.</p></blockquote>

                <p>Eveniet deleniti accusantium nulla natus nobis nam asperiores ipsa minima laudantium vero cumque cupiditate ipsum ratione dicta, expedita quae, officiis provident harum nisi! Esse eligendi ab molestias, quod nostrum hic saepe repudiandae non. Suscipit reiciendis tempora ut, saepe temporibus nemo.</p>
                <h4 class="mt-5 mb-4">Lorem ipsum dolor sit amet consectetur adipisicing elit</h4>
                <p>Accusamus, temporibus, ullam. Voluptate consectetur laborum totam sunt culpa repellat, dolore voluptas. Quaerat cum ducimus aut distinctio sit, facilis corporis ab vel alias, voluptas aliquam, expedita molestias quisquam sequi eligendi nobis ea error omnis consequatur iste deleniti illum, dolorum odit.</p>
                <p>In adipisci corporis at delectus! Cupiditate, voluptas, in architecto odit id error reprehenderit quam quibusdam excepturi distinctio dicta laborum deserunt qui labore dignissimos necessitatibus reiciendis tenetur corporis quas explicabo exercitationem suscipit. Nisi quo nulla, nihil harum obcaecati vel atque quos.</p>
                <p>Amet sint explicabo maxime accusantium qui dicta enim quia, nostrum id libero voluptates quae suscipit dolor quam tenetur dolores inventore illo laborum, corporis non ex, debitis quidem obcaecati! Praesentium maiores illo atque error! Earum, et, fugit. Sint, delectus molestiae. Totam.</p>

                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa iste, repudiandae facere aperiam sapiente, officia delectus soluta molestiae nihil corporis animi quos ratione qui labore? Sint eaque perspiciatis minus illum.</p>
                <p>Consectetur porro odio quod iure quaerat cupiditate similique, dolor reprehenderit molestias provident, esse dolorum omnis architecto magni amet corrupti neque ratione sunt beatae perspiciatis? Iste pariatur omnis sed ut itaque.</p>
                <p>Id similique, rem ipsam accusantium iusto dolores sit velit ex quas ea atque, molestiae. Sint, sed. Quisquam, suscipit! Quisquam quibusdam maiores fugiat eligendi eius consequuntur, molestiae saepe commodi expedita nemo!</p>
                <div class="pt-5">
                  <p>Categories:  <a href="#">Design</a>, <a href="#">Events</a>  Tags: <a href="#">#html</a>, <a href="#">#trends</a></p>
                </div>


                <div class="pt-5">
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
                  <!-- END comment-list -->

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
                    <li><a href="#">Creatives <span>(12)</span></a></li>
                    <li><a href="#">News <span>(22)</span></a></li>
                    <li><a href="#">Design <span>(37)</span></a></li>
                    <li><a href="#">HTML <span>(42)</span></a></li>
                    <li><a href="#">Web Development <span>(14)</span></a></li>
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
        <div class="row">
          
          
          <%-- <c:if test="radio-name.val() == '1'"> --%>
          <div class="col-lg-8">
            <div class="mb-5">
              <h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>기업리뷰</h3>

            </div>

          </div>
          <div class="col-lg-4">
            <div class="bg-light p-3 border rounded mb-4">
              <%-- <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Contact</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2"><strong class="text-black">email:</strong> ${dto.c_email}</li>
                <li class="mb-2"><strong class="text-black">tel:</strong> ${dto.c_tel}</li>
              </ul>
              <h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Introduce</h3>
              <ul class="list-unstyled pl-3 mb-0">
                <li class="mb-2">${dto.c_intro}</li>
              </ul> --%>
              <ul class="job-listings mb-5">
		        <c:forEach items="${list}" var="dto">
		          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
		            <a href="cdetail.do?cdata_seq=${dto.cdata_seq}"></a>

		            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
		              <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
		                <h2>${dto.creview_title}</h2>
		                <h3>${dto.creview_txt}</h3>
		                <strong>${dto.m_name}</strong>
		                <strong>${dto.years}년차</strong>
		                <strong>${dto.creview_star}점</strong>
		              </div>
		            </div>
		            </li>
		        </c:forEach>
		       </ul>
            </div>
           </div>
           <%-- </c:if> --%>
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
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>
          </div>
        </div>
      </div>
    </footer>
  
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


  </body>
  
  <script>

  
  </script>
</html>