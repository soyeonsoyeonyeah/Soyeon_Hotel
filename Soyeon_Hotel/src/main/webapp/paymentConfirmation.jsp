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
/* CSS for the confirmation section */
.confirmation {
    margin: 50px auto;
    max-width: 800px;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.confirmation h2 {
    margin-bottom: 20px;
    color: #333;
    font-size: 28px;
}

.confirmation p {
    font-size: 18px;
    line-height: 1.6;
    color: #666;
}

.confirmation .details {
    margin-top: 30px;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.confirmation .details table {
    width: 100%;
    border-collapse: collapse;
}

.confirmation .details th,
.confirmation .details td {
    padding: 12px;
    border-bottom: 1px solid #f0f0f0;
    text-align: left;
    color: #333;
}

.confirmation .details th {
    background-color: #f5f5f5;
    font-weight: 600;
}

.confirmation .details td {
    color: #666;
}

.confirmation .actions {
    margin-top: 30px;
}

.confirmation .actions form {
    display: inline-block;
}

.confirmation .actions button {
    padding: 12px 24px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.confirmation .actions button:hover {
    background-color: #0056b3;
}


/* Styling for the details table */
.details {
    margin-top: 30px;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.details table {
    width: 100%;
    border-collapse: collapse;
}

.details th, .details td {
    padding: 12px;
    border-bottom: 1px solid #f0f0f0;
    text-align: left;
    color: #333;
}

.details th {
    background-color: #f5f5f5;
    font-weight: 600;
}

.details td {
    color: #666;
}

/* Styling for the actions section */
.actions {
    margin-top: 30px;
}

.actions form {
    display: inline-block;
}

.actions button {
    padding: 12px 24px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.actions button:hover {
    background-color: #0056b3;
}


</style>

<body>
<header>
<jsp:include page="/include/header.jsp" />
</header>
    <div class="confirmation">
        <h2>예약이 성공적으로 완료되었습니다!</h2>
        <p>고객님의 예약이 성공적으로 처리되었습니다. 아래는 예약 상세 정보입니다.</p>
        
        <div class="details">
            <table>
                <tr>
                    <th>항목</th>
                    <th>내용</th>
                </tr>
                <tr>
                    <td>방 타입</td>
                    <td>${ requestScope.roomType }</td>
                </tr>
                <tr>
                    <td>체크인 날짜</td>
                    <td>${ requestScope.checkInDate }</td>
                </tr>
                <tr>
                    <td>체크아웃 날짜</td>
                    <td>${ requestScope.checkOutDate }</td>
                </tr>
                <tr>
                    <td>숙박 일수</td>
                    <td>${ requestScope.numberOfNights } 박</td>
                </tr>
                <tr>
                    <td>총 요금</td>
                    <td>$ ${ requestScope.totalPrice }</td>
                </tr>
            </table>
        </div>
        
           <div class="actions">
            <form action="/Soyeon_Hotel/bookings.do" method="post">
             <input type="hidden" name="roomType" value="${requestScope.roomType}">
                <button type="submit">예약확인</button>
            </form>
    </div>
</body>
<br>
	<footer class="footer-section">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="ft-about">
                            <div class="logo">
                                <a href="#">
                                    <img src="img/footer-logo.png" alt="">
                                </a>
                            </div>
                            <p>The world best hotel is Soyeon Hotel</p>
                            <div class="fa-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="ft-contact">
                            <h6>Contact Us</h6>
                            <ul>
                                <li>(12) 345 67890</li>
                                <li>vv@gmail.com</li>
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
                                <button type="submit"><i class="fa fa-send"></i></button>
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
                        <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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