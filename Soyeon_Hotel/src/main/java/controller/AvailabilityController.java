package controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;
import framework.Controller;
import vo.ReservationVO;
import vo.RoomTypeVO;

public class AvailabilityController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		
		
		// request에서 form 데이터 받기 시작
		
		String date_in = convertDateFormat(request.getParameter("date_in"));
		String date_out = convertDateFormat(request.getParameter("date_out"));
		String guest = request.getParameter("guest");
		// request에서 form 데이터 받기 끝
		
		ReservationVO res = new ReservationVO();
		res.setCheckInDate(date_in);
		res.setCheckOutDate(date_out);

		ReservationDAO reservationDAO = new ReservationDAO();
		List<RoomTypeVO> roomList = reservationDAO.getAvailableRoomTypesByDate(res);
		
		request.setAttribute("roomList", roomList);
		request.setAttribute("date_in", request.getParameter("date_in"));
		request.setAttribute("date_out", request.getParameter("date_out"));
		request.setAttribute("guest", request.getParameter("guest"));
		return "/availability.jsp";
	}
	
    private String convertDateFormat(String inputDate) {
    	
    	// 입력 형식 지정
        DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("d MMMM, yyyy", Locale.ENGLISH);

        // 출력 형식 지정
        DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // 입력 문자열을 LocalDate로 변환
        LocalDate date = LocalDate.parse(inputDate, inputFormatter);

        // LocalDate를 원하는 형식의 문자열로 변환
        String formattedDate = date.format(outputFormatter);

        return formattedDate;
    }
	

}