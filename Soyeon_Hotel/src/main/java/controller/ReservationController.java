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

public class ReservationController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		// request에서 form 데이터 받기 시작
		String roomTypeCd = request.getParameter("roomTypeCd");
		String date_in = convertDateFormat(request.getParameter("date_in"));
		String date_out = convertDateFormat(request.getParameter("date_out"));
		String guest = request.getParameter("guest");
		// request에서 form 데이터 받기 끝
		
		HttpSession session = request.getSession();
		HotelUserVO userVO = (HotelUserVO)session.getAttribute("user");
		
		//1. 유저 정보 등록
		//jsp에서 session에서 꺼내서 쓰겠음
		
		//2. 날짜 정보 등록
		// 문자열을 LocalDate로 변환
        LocalDate date1 = LocalDate.parse(date_in);
        LocalDate date2 = LocalDate.parse(date_out);
        // 두 날짜 사이의 일 수 계산
        long daysBetween = ChronoUnit.DAYS.between(date1, date2);
        
        //request에 등록할 정보들을 reservationVO객체에 담음
        ReservationVO reservationVO = new ReservationVO();
        reservationVO.setCheckInDate(date_in);
        reservationVO.setCheckOutDate(date_out);
        reservationVO.setNumberOfNights(daysBetween);
        
        request.setAttribute("reservationVO", reservationVO);
        request.setAttribute("guest",guest);
        
        
		//3. 총 요금 등록
		RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
		System.out.println(roomTypeCd);
		RoomTypeVO roomTypeVO = roomTypeDAO.getRoomTypeByRoomTypeCd(roomTypeCd);
		long totalPrice = roomTypeVO.getPrice() * daysBetween;
		
		request.setAttribute("roomTypeVO", roomTypeVO);
		request.setAttribute("totalPrice", totalPrice);
		
		
        return "/reservation.jsp";
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
