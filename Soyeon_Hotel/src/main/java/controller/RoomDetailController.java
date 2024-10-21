package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReviewsDAO;
import dao.RoomTypeDAO;
import framework.Controller;
import vo.ReviewsVO;
import vo.RoomTypeVO;

public class RoomDetailController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		String roomTypeCd = request.getParameter("roomTypeCd");
		String date_in = request.getParameter("date_in");
		String date_out = request.getParameter("date_out");
		String guest = request.getParameter("guest");
		if(roomTypeCd != null) {
			
			RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
			ReviewsDAO reviewsDAO = new ReviewsDAO();
			
			
			//roomTypeCd로 roomType받아오기
			RoomTypeVO room = roomTypeDAO.getRoomTypeByRoomTypeCd(roomTypeCd);
			List<ReviewsVO> reviews = reviewsDAO.getReviewsByRoomType(room.getRoomType());
			System.out.println("리뷰vo에 값이 들어오는지" + reviews);
			System.out.println("room vo에 룸타입이 잘 들어왔는지"+room.getRoomType());
			request.setAttribute("room", room);
			request.setAttribute("date_in", date_in);
			request.setAttribute("date_out", date_out);
			request.setAttribute("guest", guest);
			request.setAttribute("reviews", reviews);
			
		}
		return "/roomdetails.jsp";
	}

}
