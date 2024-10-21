<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="description" content="Sona Template">
<meta name="keywords" content="Sona, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Welcome to Soyeon Hotel</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

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
<style>
    /* Additional custom styles */
    .reservation {
        padding-bottom: 60px; /* Adjust padding bottom to create space for the footer */
    }
</style>
</head>

<body>
<header>
    <jsp:include page="/include/header.jsp" />
</header>

<div class="reservation">
    <h2>예약 정보 입력</h2>
    <div class="room-info">
        <img src="${requestScope.roomTypeVO.photoUrl}" alt="방 사진">
        <div class="room-details">
            <h3>방 타입: ${requestScope.roomTypeVO.roomType}</h3>
            <p>체크인 날짜: ${requestScope.reservationVO.checkInDate}</p>
            <p>체크아웃 날짜: ${requestScope.reservationVO.checkOutDate}</p>
        </div>
    </div>

    <form action="/Soyeon_Hotel/payment.do" method="post">
        <!-- 예약 정보 -->
        <input type="hidden" name="photoUrl" value="${requestScope.roomTypeVO.photoUrl}">
        <input type="hidden" name="roomType" value="${requestScope.roomTypeVO.roomType}">
        <input type="hidden" name="checkInDate" value="${requestScope.reservationVO.checkInDate}">
        <input type="hidden" name="checkOutDate" value="${requestScope.reservationVO.checkOutDate}">
        <input type="hidden" name="numberOfNights" value="${requestScope.reservationVO.numberOfNights}">
        <input type="hidden" name="totalPrice" value="${requestScope.totalPrice}">

        <label for="name">이름</label>
        <input type="text" id="name" name="name" value="${sessionScope.user.username}" readonly required>

        <label for="email">이메일</label>
        <input type="email" id="email" name="email" value="${sessionScope.user.email}" required>

        <label for="phone">전화번호</label>
        <input type="tel" id="phone" name="phone" value="${sessionScope.user.phoneNumber}" required>

        <label for="guests">투숙 인원</label>
        <select id="guests" name="guests" required>
            <option value="1" ${requestScope.guest == '1' ? 'selected' : ''}>1 Adults</option>
            <option value="2" ${requestScope.guest == '2' ? 'selected' : ''}>2 Adults</option>
            <option value="3" ${requestScope.guest == '3' ? 'selected' : ''}>3 Adults</option>
        </select><br><br>

        <label for="requests">특별 요청 사항</label>
        <textarea id="requests" name="requests" rows="4" placeholder="예: 아기 침대, 조용한 방 등"></textarea>

        <div class="price-info">
            <p>총 요금: ${requestScope.totalPrice}$</p>
        </div>

        <button type="submit">결제하기</button>
    </form>
</div>
<br>
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
