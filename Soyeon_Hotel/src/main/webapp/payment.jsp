<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hotel Reservation Payment</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- 여기에 추가적인 CSS 링크를 포함할 수 있습니다 -->
    <style>
        /* 추가적인 커스텀 CSS 코드를 입력하세요 */
        .container {
            display: flex;
            justify-content: space-between;
        }

        .reservation-info {
            width: 45%;
            background-color: #f2f2f2;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .reservation-info table {
            width: 100%;
            border-collapse: collapse;
        }

        .reservation-info th, .reservation-info td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .reservation-info th {
            background-color: #f5f5f5;
        }

        .payment-form {
            width: 50%;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-group button {
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
        
           footer {
        margin-top: 50px; /* Adjust this value as needed */
        text-align: center; /* Optional: Center align footer content */
/*         background-color: #f2f2f2; /* Optional: Add a background color */
 */        padding: 10px 0; /* Optional: Add padding */
    }
    </style>
</head>
<body>

<header>
	<jsp:include page="/include/header.jsp" />
</header>
    <div class="container">
        <!-- 예약 정보 -->
        <div class="reservation-info">
            <h3>예약 정보</h3>
            <table>
                <tr>
                    <th>항목</th>
                    <th>내용</th>
                </tr>
                <tr>
                    <td>방 타입</td>
                    <td>${requestScope.roomType}</td>
                </tr>
                <tr>
                    <td>체크인 날짜</td>
                    <td>${requestScope.checkInDate}</td>
                </tr>
                <tr>
                    <td>체크아웃 날짜</td>
                    <td>${requestScope.checkOutDate}</td>
                </tr>
                  <tr>
                    <td>총 숙박 일자</td>
                    <td>${requestScope.numberOfNights} 박</td>
                </tr>
                    <tr>
                    <td>총 가격</td>
                    <td>${requestScope.totalPrice} USD</td>
                </tr>
                <!-- 추가적인 예약 정보를 여기에 추가할 수 있습니다 -->
            </table>
        </div>
        
        <!-- 결제 폼 -->
        <div class="payment-form">
        
            <h2>신용카드 정보 입력</h2>
            <form action="paymentConfirmation.do" method="post">
    <input type="hidden" name="roomType" value="${requestScope.roomType}">
    <input type="hidden" name="checkInDate" value="${requestScope.checkInDate}">
    <input type="hidden" name="checkOutDate" value="${requestScope.checkOutDate}">
    <input type="hidden" name="numberOfNights" value="${requestScope.numberOfNights }">
    <input type="hidden" name="totalPrice" value="${requestScope.totalPrice}">
            	
                <div class="form-group">
                    <label for="cardNumber">카드 번호</label>
                    <input type="text" id="cardNumber" name="cardNumber" required>
                </div>
                
                <div class="form-group">
                    <label for="expiryDate">유효 기간</label>
                    <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
                </div>
                
                <div class="form-group">
                    <label for="cvv">CVV</label>
                </div>
                    <input type="text" id="cvv" name="cvv" required>
                
                <button type="submit">결제하기</button>
            </form>
        </div>
        
    </div>
    <footer>
	<jsp:include page="/include/footer.jsp" />
</footer>
    
</body>
</html>
