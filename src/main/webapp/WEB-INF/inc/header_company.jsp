<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <header class="site-navbar mt-3">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="site-logo col-6">
						<a href="/guhau/jobs/getjob.do">GuhaU</a>
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
                  <!--           <a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a> -->
               </div>

				</div>
			</div>
		</header>