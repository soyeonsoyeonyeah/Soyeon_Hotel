<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<%-- <title>Soyeon | Template</title> --%>
<title>Welcome to Soyeon Hotel</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>



<body>
	<c:if test="${not empty success}">
		<script type="text/javascript">
			alert(" ${user.username}님 환영합니다.");
		</script>
	</c:if>

	<!-- Alert for Login Error -->
	<c:if test="${not empty error}">
		<script type="text/javascript">
			alert("${error}");
		</script>
	</c:if>
	
	
	</div>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Section Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="canvas-open">
		<i class="icon_menu"></i>
	</div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<i class="icon_close"></i>
		</div>
		<div class="search-icon  search-switch">
			<i class="icon_search"></i>
		</div>
		<div class="header-configure-area">
			<div class="language-option">
				<img src="img/flag.jpg" alt=""> <span>EN <i
					class="fa fa-angle-down"></i></span>
				<div class="flag-dropdown">
					<ul>
						<li><a href="#">Zi</a></li>
						<li><a href="#">Fr</a></li>
					</ul>
				</div>
			</div>
			<a href="/Soyeon_Hotel/availability.do" class="bk-btn">예약해용</a>
		</div>

		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="/Soyeon_Hotel/index.do">Home</a></li>
				<li><a href="/Soyeon_Hotel/rooms.do">Rooms</a></li>
				<li><a href="./about-us.html">About Us</a></li>
				<li><a href="./pages.html">Pages</a>
					<ul class="dropdown">
						<li><a href="./roomdetail.do">Room Details</a></li>
						<li><a href="#">Deluxe Room</a></li>
						<li><a href="#">Family Room</a></li>
						<li><a href="#">Premium Room</a></li>
					</ul></li>
				<li><a href="./blog.html">News</a></li>
				<li><a href="./contact.html">Contact</a></li>
			</ul>
		</nav>
		<div id="mobile-menu-wrap"></div>
		<div class="top-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-tripadvisor"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a>
		</div>
		<ul class="top-widget">
			<li><i class="fa fa-phone"></i> (12) 345 67890</li>
			<li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
		</ul>
	</div>
	<!-- Offcanvas Menu Section End -->

	<!-- Header Section Begin -->
	<header>
		<jsp:include page="/include/header.jsp" />
	</header>
	<!-- Header End -->

	<!-- Hero Section Begin -->
	<section class="hero-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="hero-text">
						<h1>Super Duper Luxury Soyeon Hotel</h1>
						<p>Here are the best hotel booking sites, including
							recommendations for international travel and for finding
							low-priced hotel rooms.</p>
						<a href="/Soyeon_Hotel/rooms.do" class="primary-btn">Discover Now</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5 offset-xl-2 offset-lg-1">
					<div class="booking-form">
						<h3>Booking Soyeon Hotel</h3>
						
						<form name="booking" action=availability.do>
							<div class="check-date">
					    <label for="date-in">Check In:</label>
					    <input type="text" class="date-input" id="date-in" name="date_in">
					    <i class="icon_calendar"></i>
					</div>
					<div class="check-date">
					    <label for="date-out">Check Out:</label>
					    <input type="text" class="date-input" id="date-out" name="date_out">
					    <i class="icon_calendar"></i>
					</div>
					
					

							<div class="select-option">
								<label for="guest">Guests:</label> <select id="guest"
									name="guest">
									<option value="1">1 Adults</option>
									<option value="2">2 Adults</option>
									<option value="3">3 Adults</option>
								</select>
							</div>
							<!--  <div class="select-option">
                                <label for="room">Room:</label>
                                <select id="room">
                                    <option value="">1 Room</option>
                                    <option value="">2 Room</option>
                                </select>
                            </div> -->
							<button type="submit">Check Availability</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/hero/hero-1.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-2.jpg"></div>
			<div class="hs-item set-bg" data-setbg="img/hero/hero-3.jpg"></div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- About Us Section Begin -->
	<section class="aboutus-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="about-text">
						<div class="section-title">
							<span>About Us</span>
							<h2>
								Super Duper Luxury  <br />Soyeon Hotel
							</h2>
						</div>
						<p class="f-para">저희 호텔의 지배인이신 미스오씨는 이 세상에서 제일 총명하며 현명하십니다.
						그녀가 하시는 말씀은 모두가 정답이죠.</p>
						<p class="s-para">Ms. Oh, the manager of our hotel, is the smartest and wisest in the world.
									Everything she says is correct.</p>
						<a href="#" class="primary-btn about-btn">Read More</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="about-pic">
						<div class="row">
							<div class="col-sm-6">
								<img src="img/vvfamily.jpg" alt="">
							</div>
							<div class="col-sm-6">
								<img src="img/about/about-2.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- About Us Section End -->

	<!-- Services Section End -->
	<!-- <section class="services-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>What We Do</span>
						<h2>Discover Our Services</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-036-parking"></i>
						<h4>Travel Plan</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-033-dinner"></i>
						<h4>Catering Service</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-026-bed"></i>
						<h4>Babysitting</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-024-towel"></i>
						<h4>Laundry</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-044-clock-1"></i>
						<h4>Hire Driver</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="service-item">
						<i class="flaticon-012-cocktail"></i>
						<h4>Bar & Drink</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- Services Section End -->

	<!-- Home Room Section Begin -->
	<section class="hp-room-section">
		<div class="container-fluid">
			<div class="hp-room-items">
				<div class="row">
					<c:forEach items="${requestScope.roomList }" var="room">
						<div class="col-lg-3 col-md-6">
							<div class="hp-room-item set-bg"
								data-setbg="/Soyeon_Hotel/${room.photoUrl }">
								<div class="hr-text">

									<h3>${room.roomType }</h3>
									<h2>${room.price }$<span>/Pernight</span>
									</h2>
									<table>
										<tbody>
											<tr>
												<td class="r-o">Size:</td>
												<td>${room.roomSize }</td>
											</tr>
											<tr>
												<td class="r-o">Capacity:</td>
												<td>Max persion ${room.capacity }</td>
											</tr>
											<tr>
												<td class="r-o">Bed:</td>
												<td>${room.bedType }</td>
											</tr>
											<tr>
												<td class="r-o">Services:</td>
												<td>Wifi, Television, Bathroom,...</td>
											</tr>
										</tbody>
									</table>

									<a
										href="/Soyeon_Hotel/roomDetails.do?roomTypeCd=${room.roomTypeCd }"
										class="primary-btn">More Details</a>
								</div>
							</div>
						</div>
					</c:forEach>

					<%--   <c:forEach items="${requestScope.roomList }" var="room">
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="img/room/room-b1.jpg">
                            <div class="hr-text">
                            	
                                <h3>${room.roomType }</h3>
                                <h2>${room.price }$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>${room.roomSize }</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion ${room.capacity }</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>${room.bedType }</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="img/room/room-b2.jpg">
                            <div class="hr-text">
                                <h3>Premium King Room</h3>
                                <h2>159$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="img/room/room-b3.jpg">
                            <div class="hr-text">
                                <h3>Deluxe Room</h3>
                                <h2>198$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="hp-room-item set-bg" data-setbg="img/room/room-b4.jpg">
                            <div class="hr-text">
                                <h3>Family Room</h3>
                                <h2>299$<span>/Pernight</span></h2>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Size:</td>
                                            <td>30 ft</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Capacity:</td>
                                            <td>Max persion 5</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Bed:</td>
                                            <td>King Beds</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Services:</td>
                                            <td>Wifi, Television, Bathroom,...</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <a href="#" class="primary-btn">More Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --%>
	</section>
	<!-- Home Room Section End -->

	<!-- Testimonial Section Begin -->
	<section class="testimonial-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Testimonials</span>
						<h2>What Customers Say?</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 offset-lg-2">
					<div class="testimonial-slider owl-carousel">
						<div class="ts-item">
							<p>Soyeon Hotel은 제 인생에서 머문 호텔중 당연코 최고입니다.
							   호텔 지배인 미스오씨는 제가 여지껏 뵌 사람들중에 가장 총명하고 다재다능하신분입니다.
							   </p>
							<div class="ti-author">
								<div class="rating">
									<i class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star-half_alt"></i>
								</div>
								<h5> 문예찬 </h5>
							</div>
							<img src="img/testimonial-logo.png" alt="">
						</div>
						<div class="ts-item">
							<p>저는 미스오씨를 보자마자 한눈에 반해버렸습니다. 어쩜 그렇게 완벽하실 수 있죠? 그녀가 만든 호텔은 정말 세상에서
								가장 아름다웠습니다. 저는 월급을 버는 족족 이 호텔에 모두 사용할 것을 스스로와 약속했답니다. 미쓰오 사랑해요</p>
							<div class="ti-author">
								<div class="rating">
									<i class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star"></i> <i class="icon_star"></i> <i
										class="icon_star-half_alt"></i>
								</div>
								<h5>- 전보경</h5>
							</div>
							<img src="img/testimonial-logo.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section End -->

 <!-- Blog Section Begin 
	<section class="blog-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<span>Hotel News</span>
						<h2>Our Blog & Event</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-1.jpg">
						<div class="bi-text">
							<span class="b-tag">Travel Trip</span>
							<h4>
								<a href="#">Tremblant In Canada</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 15th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-2.jpg">
						<div class="bi-text">
							<span class="b-tag">Camping</span>
							<h4>
								<a href="#">Choosing A Static Caravan</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 15th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item set-bg" data-setbg="img/blog/blog-3.jpg">
						<div class="bi-text">
							<span class="b-tag">Event</span>
							<h4>
								<a href="#">Copper Canyon</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 21th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="blog-item small-size set-bg"
						data-setbg="img/blog/blog-wide.jpg">
						<div class="bi-text">
							<span class="b-tag">Event</span>
							<h4>
								<a href="#">Trip To Iqaluit In Nunavut A Canadian Arctic
									City</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 08th April, 2019
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item small-size set-bg"
						data-setbg="img/blog/blog-10.jpg">
						<div class="bi-text">
							<span class="b-tag">Travel</span>
							<h4>
								<a href="#">Traveling To Barcelona</a>
							</h4>
							<div class="b-time">
								<i class="icon_clock_alt"></i> 12th April, 2019
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	Blog Section End --> 
	

	


	<footer>
		<jsp:include page="/include/footer.jsp" />
	</footer>

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins 경로표시 다시해야함-->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</html>