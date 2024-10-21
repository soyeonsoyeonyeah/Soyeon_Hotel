package controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;
import framework.Controller;
import vo.HotelUserVO;
import vo.ReservationVO;
import vo.RoomTypeVO;
import vo.RoomsVO;

public class PaymentConfirmationController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		

		// Retrieve form data
		String cardNumber = request.getParameter("cardNumber");
		String expiryDate = request.getParameter("expiryDate");
		String cvv = request.getParameter("cvv");
		
		// Assuming these attributes are set in previous request
		String roomType =  request.getParameter("roomType");
		System.out.println("-----------" + roomType);
		String checkInDate =  request.getParameter("checkInDate");
		String checkOutDate = request.getParameter("checkOutDate");
		String numberOfNights =  request.getParameter("numberOfNights");
		String totalPrice =  request.getParameter("totalPrice");

		// Set attributes in request for paymentConfirmation.jsp
		request.setAttribute("cardNumber", cardNumber);
		request.setAttribute("expiryDate", expiryDate);
		request.setAttribute("cvv", cvv);
		request.setAttribute("roomType", roomType);
		request.setAttribute("checkInDate", checkInDate);
		request.setAttribute("checkOutDate", checkOutDate);
		request.setAttribute("numberOfNights", numberOfNights);
		request.setAttribute("totalPrice", totalPrice);
		
		ReservationVO reservation = new ReservationVO();
		HotelUserVO userVo = (HotelUserVO)request.getSession().getAttribute("user");
		reservation.setCheckInDate(checkInDate);
		reservation.setUserId(userVo.getUserId());
		reservation.setCheckOutDate(checkOutDate);
		reservation.setNumberOfNights(Long.parseLong(numberOfNights));
		reservation.setTotalPrice(Integer.parseInt(totalPrice));
		reservation.setRoomId(getAvailableRoomId(roomType));
		ReservationDAO reserveDAO = new ReservationDAO();
		reserveDAO.insertReservation(reservation);

            return "/paymentConfirmation.jsp"; // 로그인 페이지로 이동
        }
    
    private String getAvailableRoomId(String roomType) {
    	ReservationDAO reserveDAO = new ReservationDAO();
    	RoomTypeVO roomTypeVO = reserveDAO.selectOneRoomTypeVOByRoomType(roomType);
    	System.out.println(roomTypeVO);
    	String roomTypeCd = roomTypeVO.getRoomTypeCd();
    	
    	List<RoomsVO> roomList = reserveDAO.selectListAvailableRooms(roomTypeCd);
    	Random random = new Random();
        int randomIndex = random.nextInt(roomList.size());
        System.out.println(randomIndex);
        System.out.println(roomList.get(randomIndex).getRoomId());
        return roomList.get(randomIndex).getRoomId();
    }
}
