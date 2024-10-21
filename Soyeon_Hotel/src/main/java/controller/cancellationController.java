package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelUserDAO;
import dao.ReservationDAO;
import framework.Controller;
import vo.HotelUserVO;

public class cancellationController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");

        String bookingId = request.getParameter("bookingId"); // 파라미터 이름을 문자열 상수로 전달
        String password = request.getParameter("password"); // 파라미터 이름을 문자열 상수로 전달
        System.out.println("값이 들어왔니?" + bookingId);

        ReservationDAO cancellation = new ReservationDAO();
        cancellation.cancellation(bookingId);
        
		return "/bookings.do";

    }
}
