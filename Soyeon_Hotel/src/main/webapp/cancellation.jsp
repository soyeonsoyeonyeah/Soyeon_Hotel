<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

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

        .login {
            text-align: center;
        }

        .login h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .login form {
            max-width: 400px;
            margin: 0 auto;
        }

        .login .form-group {
            margin-bottom: 20px;
        }

        .login .btn-submit {
            width: 100%;
            max-width: 200px;
        } */
        
                .room-item {
            border: 1px solid #ddd; /* Add border around the reservation details */
            padding: 20px; /* Add padding inside the border */
            margin-bottom: 20px; /* Add margin at the bottom for spacing */
        }
    </style>
</head>

<body>
    <%-- JavaScript 함수: 비밀번호 확인 및 예약 취소 처리 --%>
    <script>
        function validateAndSubmit() {
            var userPassword = "<%= ((vo.HotelUserVO) session.getAttribute("user")).getPassword() %>";
            var enteredPassword = document.getElementById("password").value; // 사용자가 입력한 비밀번호

            if (userPassword === enteredPassword) {
                alert("예약이 성공적으로 취소되었습니다.");
                // 여기에 예약 취소 처리 로직을 추가할 수도 있습니다.
                return true; // 예약 취소를 진행합니다.
            } else {
                alert("비밀번호를 다시 확인해주세요.");
                return false; // 비밀번호가 일치하지 않으므로 예약 취소를 중단합니다.
            }
        }
    </script>

    <header>
        <jsp:include page="/include/header.jsp" />
    </header>

    <div class="container">
        <div class="row justify-content-end">
            <div class="col-lg-6 col-md-6">
                <div class="room-item">
                    <%-- <img src="/Soyeon_Hotel/${room.photoUrl }" alt=""> --%>
                    <div class="ri-text">
                        <h3><strong>예약정보</strong></h3>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="r-o">예약번호:</td>
                                    <td>${param.bookingId}</td>
                                </tr>
                                <tr>
                                    <td class="r-o">예약자 성명:</td>
                                    <td>${sessionScope.user.username}</td>
                                </tr>
                                <tr>
                                    <td class="r-o">방타입:</td>
                                    <td>${param.roomType}</td>
                                </tr>
                                <tr>
                                    <td class="r-o">체크인 날짜:</td>
                                    <td>${param.checkInDate}</td>
                                </tr>
                                <tr>
                                    <td class="r-o">체크아웃 날짜:</td>
                                    <td>${param.checkOutDate}</td>
                                </tr>
                                <tr>
                                    <td class="r-o">숙박날짜:</td>
                                    <td>${param.numberOfNights} 일</td>
                                </tr>
                                <tr>
                                    <td class="r-o">총요금:</td>
                                    <td>${param.totalPrice}$</td>
                                </tr>
                                <tr>
                                    <td class="r-o">Services:</td>
                                    <td>Wifi, Television, Bathroom,...</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="login">
                    <h2>예약 취소를 위해서 비밀번호를 입력하세요</h2>
                    <form action="cancellation.do" method="post" onsubmit="return validateAndSubmit()">
                        <input type="hidden" name="bookingId" value="${param.bookingId}">
                        <div class="form-group">
                            <label for="password"></label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-submit">예약취소</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

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
