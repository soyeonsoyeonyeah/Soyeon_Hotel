package controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HotelUserDAO;
import dao.ReservationDAO;
import dao.RoomTypeDAO;
import framework.Controller;
import vo.HotelUserVO;
import vo.ReservationVO;
import vo.RoomTypeVO;

public class PaymentController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		// request에서 form 데이터 받기 시작

		String roomType = request.getParameter("roomType");
		String photoUrl = request.getParameter("photoUrl");
		String checkInDate = request.getParameter("checkInDate");
		String checkOutDate = request.getParameter("checkOutDate");
		String numberOfNights = request.getParameter("numberOfNights");

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String guest = request.getParameter("guest");
		String specialRequest = request.getParameter("request");
		String totalPrice = request.getParameter("totalPrice");
		
		
        request.setAttribute("photoUrl", photoUrl);
        request.setAttribute("roomType", roomType);
        request.setAttribute("checkInDate", checkInDate);
        request.setAttribute("checkOutDate", checkOutDate);
        request.setAttribute("numberOfNights", numberOfNights);
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("guest", guest);
        request.setAttribute("specialRequest", specialRequest);
        request.setAttribute("totalPrice", totalPrice);
		

		return "/payment.jsp";
	}

}
