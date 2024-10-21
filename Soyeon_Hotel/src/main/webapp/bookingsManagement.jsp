<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>호텔 예약 확인</title>
   <link rel="stylesheet" href="css/style.css"> <!-- 예시: 스타일 시트 링크 --> 
    <style>
    .pagination {
        margin: 20px 0;
        text-align: center;
        width: 100%;
    }
    
    .pagination a, .pagination b {
        display: inline-block;
        padding: 8px 16px;
        margin: 0 4px;
        border: 1px solid #ddd;
        background-color: #f1f1f1;
        color: #333;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }
    
    .pagination a:hover {
        background-color: #8B4513; /* Dark brown */
        color: white; /* Text color on hover */
    }
    
    .pagination b {
        background-color: #D2B48C; /* Light brown for active page */
        color: white;
        border: 1px solid #D2B48C;
    }
    
            .room-item {
            border: 1px solid #ddd; /* Add border around the reservation details */
            padding: 20px; /* Add padding inside the border */
            margin-bottom: 20px; /* Add margin at the bottom for spacing */
        }

        .room-photo {
            max-width: 100%; /* Ensure the image does not exceed its container */
            height: auto; /* Maintain aspect ratio */
            display: block; /* Ensure proper display as a block element */
            margin-left: auto; /* Align the image to the right within its container */
            margin-right: 0; /* Align the image to the right within its container */
        }

        .table-container {
            text-align: right; /* Align the table content to the right */
        }
</style>

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

  <!-- 예약 취소 결과 메시지 또는 오류 메시지를 표시 -->
<% if (request.getAttribute("message") != null) { %>
    <script>
        alert("<%= request.getAttribute("message") %>");
    </script>
<% } else if (request.getAttribute("error") != null) { %>
    <script>
        alert("<%= request.getAttribute("error") %>");
    </script>
<% } %>

	<header>
		<jsp:include page="/include/header.jsp" />
	</header>

<div class="container">
    <h2 style="text-align: center;">호텔 예약 확인</h2>
    
    <c:forEach items="${reservationList}" var="reservation">
        <div class="room-item">
            <div class="ri-text d-flex justify-content-between border">
            	<div>
	                <h3><strong>예약정보</strong></h3>
	                <table>
	                    <tbody>
	                        <tr>
	                            <td class="r-o">예약번호:</td>
	                            <td>${reservation.bookingId}</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">예약자 아이디:</td>
	                            <td>${reservation.userId}</td>
	                        </tr>
	                         <tr>
	                            <td class="r-o">방타입:</td>
	                            <td>${reservation.rooms.roomType.roomType}</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">체크인 날짜:</td>
	                            <td>${reservation.checkInDate}</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">체크아웃 날짜:</td>
	                            <td>${reservation.checkOutDate}</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">숙박날짜:</td>
	                            <td>${reservation.numberOfNights} 일</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">총요금:</td>
	                            <td>${reservation.totalPrice}$</td>
	                        </tr>
	                        <tr>
	                            <td class="r-o">Services:</td>
	                            <td>Wifi, Television, Bathroom,...</td>
	                        </tr>
	                    </tbody>
	                </table>
                
                                            
                <form action="/Soyeon_Hotel/cancellation.jsp" method="post">
                    <input type="hidden" name="bookingId" value="${reservation.bookingId}">
                    <input type="hidden" name="userId" value="${sessionScope.user.userId}">
                    <input type="hidden" name="roomType" value="${reservation.rooms.roomType.roomType}">
                    <input type="hidden" name="checkInDate" value="${reservation.checkInDate}">
                    <input type="hidden" name="checkOutDate" value="${reservation.checkOutDate}">
                    <input type="hidden" name="numberOfNights" value="${reservation.numberOfNights}">
                    <input type="hidden" name="totalPrice" value="${reservation.totalPrice}">
                    <c:choose>
                        <c:when test="${reservation.status == 'cancelled'}">
                            <h1 class="primary-btn" style="color:red;">취소된 예약</h1>
                        </c:when>
                        <c:otherwise>
                            <a href="/Soyeon_Hotel/cancellation.jsp?bookingId=${reservation.bookingId}&userId=${sessionScope.user.userId}&roomType=${reservation.rooms.roomType.roomType}&checkInDate=${reservation.checkInDate}&checkOutDate=${reservation.checkOutDate}&numberOfNights=${reservation.numberOfNights}&totalPrice=${reservation.totalPrice}" class="primary-btn" onclick="return cancelReservation(this);">예약취소</a>
                        </c:otherwise>
                    </c:choose>
                </form>
                </div>
                <div>
                	<img src="/Soyeon_Hotel/${reservation.rooms.roomType.photoUrl}" alt="" class="room-photo" width="600px" height="400px">
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

<div class="pagination d-flex justify-content-center" style="text-align: center; width: 100%;">
    ${pageTag}
</div>

	<footer>
		<jsp:include page="/include/footer.jsp" />
	</footer>

</body>
</html>
