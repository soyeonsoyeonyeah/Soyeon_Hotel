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


<style>
.join {
	display: block;
	font-size: 14px;
	/* text-transform: uppercase; */
	border: 1px solid #dfa974;
	border-radius: 2px;
	color: #dfa974;
	font-weight: 500;
	background: transparent;
	width: calc(100% - 40px);
	max-width: 400px;
	height: 40px;
	margin: 20px auto 0;
}


.join:hover {
  background-color: #45a049;
}
</style>

<body>
	<c:if test="${not empty success}">
		<script type="text/javascript">
			alert(" 회원가입이 완료되었습니다. ");
		</script>
	</c:if>
<%--     회원가입 성공 메시지가 존재할 경우에만 출력
    <% if (request.getAttribute("message") != null) { %>
        <p><%= request.getAttribute("message") %></p>
    <% } %>
    
     --%>
	<c:if test="${not empty error}">
		<script type="text/javascript">
			alert("${error}");
		</script>
	</c:if>
	
	<!-- Page Preloder -->
	<div id="preloader">
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
			<a href="#" class="bk-btn">Booking Now</a>
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

	<div class="login">
		<h2 class="text-center mb-4">Login</h2>
		<form action="login.do" method="post" onsubmit="return validateForm()">
			<div class="form-group">
				<label for="username">아이디</label> <input type="text"
					class="form-control" id="id" name="id" required>
			</div>
			<!-- 			<div class="form-group">
				<label for="email">이메일 주소</label> <input type="email"
					class="form-control" id="email" name="email" required>
			</div> -->
			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
			<!-- <div class="form-group">
				<label for="password_confirm">비밀번호 확인</label> <input type="password"
					class="form-control" id="password_confirm" name="password_confirm"
					required>
				<div class="error-message"></div>
			</div>
			<div class="form-group">
				<label for="phone_number">전화번호</label> <input type="text"
					class="form-control" id="phone_number" name="phone_number" required>
			</div>
			<div class="form-group">
				<label for="address">주소</label> <input type="text"
					class="form-control" id="address" name="address" required>
			</div> -->
			<div class="button-container">
				<button type="submit" class="btn btn-primary btn-submit">로그인</button>
				<a href="/Soyeon_Hotel/join.jsp" class="join">가입하기</a>
			</div>

		</form>
	</div>

	<script>
        // 세션에 success 속성이 존재할 경우 알림창 띄우기
        <%if (request.getAttribute("success") != null) {%>
            alert("<%=request.getAttribute("success")%>
		");
	<%}%>
		
	</script>

	<footer>
		<jsp:include page="/include/footer.jsp" />
	</footer>

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>
