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
<title>Sona | Template</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	    function submitReview1() {
	    	var userId = '${sessionScope.user.userId}';
	        var email = '${sessionScope.user.email}';
	        var reviewText = $('#reviewText').val();
	        var roomType = '${requestScope.room.roomType}';

	        console.log(userId);
	        console.log(email);
	        console.log(reviewText);
	        console.log(roomType);
	        
	        $.ajax({
	            url: '/Soyeon_Hotel/ajaxReviews.jsp',
	            method: 'POST',
	            data: {
	                userId: userId,
	                email: email,
	                reviewText: reviewText,
	                roomType: roomType
	            },
	            success: function(response) {
	                // 새 리뷰를 즉시 화면에 추가합니다.
	                var newReview = '<div class="review-item"><div class="ri-pic"><img src="img/room/avatar/avatar-1.jpg" alt=""></div><div class="ri-text"><span>27 Aug 2019</span><div class="rating"><i class="icon_star"></i> <i class="icon_star"></i> <iclass="icon_star"></i> <i class="icon_star"></i> <iclass="icon_star-half_alt"></i></div><h5>${sessionScope.user.userId}</h5><p>'+reviewText + '</p></div></div>';
	                $('#reviewsDiv').append(newReview);
	                // 입력 필드를 초기화합니다.
	                $('#reviewText').val('');
	            },
	            error: function(xhr, status, error) {
	                alert('Failed to submit review. Please try again.');
	            }
	        });
	    }
		
</script>
</head>

<body>
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
		<div class="search-icon search-switch">
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
			<a href="#" class="bk-btn">Booking Now</a>
		</div>
		<nav class="mainmenu mobile-menu">
			<ul>
				<li class="active"><a href="./index.html">Home</a></li>
				<li><a href="./rooms.html">Rooms</a></li>
				<li><a href="./about-us.html">About Us</a></li>
				<li><a href="./pages.html">Pages</a>
					<ul class="dropdown">
						<li><a href="./room-details.html">Room Details</a></li>
						<li><a href="./blog-details.html">Blog Details</a></li>
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

	<!-- Breadcrumb Section Begin -->
	<div class="breadcrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<h2>${requestScope.room.roomType }</h2>
						<div class="bt-option">
							<a href="./home.html">Home</a> <span>Rooms</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Room Details Section Begin -->
	<section class="room-details-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="room-details-item">
						<img src="/Soyeon_Hotel/${requestScope.room.photoUrl }" alt="">
						<!--  <img src="img/room/room-details.jpg" alt=""> -->
						<div class="rd-text">
							<div class="rd-title">
								<h3>${requestScope.room.roomType }</h3>
								<div class="rdt-right">
									<div class="rating">
										<i class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star-half_alt"></i>
									</div>
									<a href="/Soyeon_Hotel/LoginSignUp.jsp">Booking Now</a>
								</div>
							</div>
							<h2>${requestScope.room.price }$<span>/Pernight</span>
							</h2>
							<table>
								<tbody>
									<tr>
										<td class="r-o">Size:</td>
										<td>30 ft</td>
									</tr>
									<tr>
										<td class="r-o">Capacity:</td>
										<td>${requestScope.room.capacity }</td>
									</tr>
									<tr>
										<td class="r-o">Bed:</td>
										<td>${requestScope.room.bedType }</td>
									</tr>
									<tr>
										<td class="r-o">Services:</td>
										<td>Wifi, Television, Bathroom,...</td>
									</tr>
								</tbody>
							</table>
							<p class="f-para">우리의 ${requestScope.room.roomType }은 프리미엄 엘레강스를 추구하는 청와대 수석 디자이너 미스오가 인테리어에 참여하였습니다.
											 고객여러분들께 ${requestScope.room.roomType }의 웅장함을 전달드립니다.</p>
							
						</div>
					</div>
					<div class="rd-reviews" id="reviewsDiv">
						<h4>Reviews</h4>
						<c:forEach items="${requestScope.reviews }" var="review">
							<div class="review-item">
								<div class="ri-pic">
									<img src="img/room/avatar/avatar-1.jpg" alt="">
								</div>
								<div class="ri-text">
									<span>${review.createdAt }</span>
									<div class="rating">
										<i class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star"></i> <i class="icon_star"></i> <i
											class="icon_star-half_alt"></i>
									</div>
									<h5>${review.userId }</h5>
									<p>${review.reviewText }</p>
								</div>
							</div>
						</c:forEach>
					</div>
					
					
				<c:if test="${sessionScope.user ne null}">
				
					<div class="review-add mt-5">
						<h4>Add Review</h4>
						<form action="#" class="ra-form">
							<div class="row">
								<div class="col-lg-6">
									<input type="text" value="${sessionScope.user.username}">
								</div>
								<div class="col-lg-6">
									<input type="text" value="${sessionScope.user.email}">
								</div>
								<div class="col-lg-12">
									<div>
										<h5>You Rating:</h5>
										<div class="rating">
											<i class="icon_star"></i> <i class="icon_star"></i> <i
												class="icon_star"></i> <i class="icon_star"></i> <i
												class="icon_star-half_alt"></i>
										</div>
									</div>
									<textarea placeholder="Your Review" id="reviewText"></textarea>
									<button type="button" onclick="submitReview1()">Submit Now</button>
								</div>
							</div>
						</form>
					</div>
					</c:if>
				</div>
				<div class="col-lg-4">
					<div class="room-booking">
						<h3>Your Reservation</h3>
						<form name="booking" action="/Soyeon_Hotel/reservation.do"
							onsubmit="return submitForm()" method="post">
							<input type="hidden" name="roomTypeCd" value="${ requestScope.room.roomTypeCd }"/>
							<div class="check-date">
								<label for="date-in">Check In:</label> <input type="text"
									class="date-input" id="date-in" name="date_in"
									value="${requestScope.date_in }"> <i
									class="icon_calendar"></i>
							</div>
							<div class="check-date">
								<label for="date-out">Check Out:</label> <input type="text"
									class="date-input" id="date-out" name="date_out"
									value="${requestScope.date_out }"> <i
									class="icon_calendar"></i>
							</div>
							<div class="select-option">
								<label for="guest">Guests:</label> <select id="guest"
									name="guest">
									<option value="1"
										${requestScope.guest == '1' ? 'selected' : ''}>1
										Adults</option>
									<option value="2"
										${requestScope.guest == '2' ? 'selected' : ''}>2
										Adults</option>
									<option value="3"
										${requestScope.guest == '3' ? 'selected' : ''}>3
										Adults</option>
								</select>
							</div>


							<button type="submit">BOOKING NOW</button>
						</form>

						<script>
							// Function to set selected values from URL parameters
							function setFormValues() {
								const urlParams = new URLSearchParams(
										window.location.search);
								if (urlParams.has('date-in')) {
									document.getElementById('date-in').value = urlParams
											.get('date-in');
								}
								if (urlParams.has('date-out')) {
									document.getElementById('date-out').value = urlParams
											.get('date-out');
								}
								if (urlParams.has('guest')) {
									const guestValue = urlParams.get('guest');
									document
											.querySelector('#guest option[value="'
													+ guestValue + '"]').selected = true;
								}
								if (urlParams.has('room')) {
									const roomValue = urlParams.get('room');
									document
											.querySelector('#room option[value="'
													+ roomValue + '"]').selected = true;
								}
							}

							// Call setFormValues on page load
							window.onload = function() {
								setFormValues();
							};

							// Function to submit form
							function submitForm() {
								// You can add validation logic here if needed
								return true; // Returning true to allow the form submission
							}
						</script>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Room Details Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer-section">
		<div class="container">
			<div class="footer-text">
				<div class="row">
					<div class="col-lg-4">
						<div class="ft-about">
							<div class="logo">
								<a href="#"> <img src="img/footer-logo.png" alt="">
								</a>
							</div>
							<p>
								We inspire and reach millions of travelers<br /> across 90
								local websites
							</p>
							<div class="fa-social">
								<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
									class="fa fa-twitter"></i></a> <a href="#"><i
									class="fa fa-tripadvisor"></i></a> <a href="#"><i
									class="fa fa-instagram"></i></a> <a href="#"><i
									class="fa fa-youtube-play"></i></a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-contact">
							<h6>Contact Us</h6>
							<ul>
								<li>(12) 345 67890</li>
								<li>info.colorlib@gmail.com</li>
								<li>856 Cordia Extension Apt. 356, Lake, United State</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3 offset-lg-1">
						<div class="ft-newslatter">
							<h6>New latest</h6>
							<p>Get the latest updates and offers.</p>
							<form action="#" class="fn-form">
								<input type="text" placeholder="Email">
								<button type="submit">
									<i class="fa fa-send"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright-option">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<ul>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Terms of use</a></li>
							<li><a href="#">Privacy</a></li>
							<li><a href="#">Environmental Policy</a></li>
						</ul>
					</div>
					<div class="col-lg-5">
						<div class="co-text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

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

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	
	
	 <div id="reviews-container">
        <h2>실험실험</h2>
    </div>

</body>

</html>