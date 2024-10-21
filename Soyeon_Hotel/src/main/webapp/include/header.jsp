<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Header Section Begin -->
<header class="header-section">



<!-- 		<script type="text/javascript">
			alert("${sessionScope.user.userType}님 환영합니다.");
		</script> -->
	

	<!-- Alert for Login Error -->
	<%-- <c:if test="${not empty error}">
		<script type="text/javascript">
			alert("${error}");
		</script>
	</c:if>   --%>

	<div class="top-nav">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<ul class="tn-left">
						<li><i class="fa fa-phone"></i> (+82) 10 3456 7893</li>
						<li><i class="fa fa-envelope"></i> vv@gmail.com</li>
					</ul>
				</div>
				<div class="col-lg-6">
					<div class="tn-right">
						<div class="top-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-tripadvisor"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>

						  <c:if test="${sessionScope.user ne null}">
							<a href="/Soyeon_Hotel/availability.do" class="bk-btn">Booking Now</a>
							<div class="language-option">
								<img src="img/flag.jpg" alt=""> <a
									href="/Soyeon_Hotel/LoginSignUp.jsp"> <span>${user.username}
										<i class="fa fa-angle-down"></i>
								</span>
								</a>
								<div class="flag-dropdown">
									<ul>
										<li><a href="/Soyeon_Hotel/bookings.do">Bookings</a></li>
										<li><a href="/Soyeon_Hotel/logout.jsp">Logout</a></li>
									</ul>
								</div>
							</div>
						</c:if>

						<c:if test="${sessionScope.user eq null}">
						<!-- 	<script type="text/javascript">
								alert("${user.username}");
							</script> -->
							<a href="/Soyeon_Hotel/availability.do" class="bk-btn">Booking Now</a>
							<div class="language-option">
								<img src="img/flag.jpg" alt=""> <a
									href="/Soyeon_Hotel/LoginSignUp.jsp"> <span>login
										<i class="fa fa-angle-down"></i>
								</span>
								</a>
								<!-- <div class="flag-dropdown">
									<ul>
										<li><a href="/Soyeon_Hotel/join.jsp">Sign Up</a></li>
										<li><a href="#">Fr</a></li>
									</ul>
								</div> -->
							</div>
						</c:if>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="menu-item">
		<div class="container">
			<div class="row">
				<div class="col-lg-2">
					<div class="logo">
						<a href="./index.do"> <img src="img/vv.gif" alt=""
							style="width: 30%;">
						</a>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="nav-menu">
						<nav class="mainmenu">
							<ul>
								<li class="active"><a href="/Soyeon_Hotel/index.do">Home</a></li>
								<li><a href="/Soyeon_Hotel/rooms.do">Rooms</a></li>
								<c:if test="${sessionScope.user.userType eq 'a'}">
								<li><a href="/Soyeon_Hotel/bookingsManagement.do">Bookings</a></li>
								</c:if>
								<li><a href="./about-us.html">About Us</a></li>
								<li><a href="./pages.html">Pages</a>
									<ul class="dropdown">
										<li><a href="./blog-details.html">Blog Details</a></li>
										<li><a href="#">Family Room</a></li>
										<li><a href="#">Premium Room</a></li>
									</ul></li>
								<li><a href="./blog.html">News</a></li>
								<li><a href="./contact.html">Contact</a></li>
							</ul>
						</nav>
						<div class="nav-right search-switch">
							<i class="icon_search"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>


<!-- Header End -->
