package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReservationDAO;
import framework.Controller;
import framework.PageUtil;
import framework.PageUtilForAllBookings;
import vo.HotelUserVO;
import vo.ReservationVO;



public class BookingsController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String page = request.getParameter("pageTag01");
		if(page==null || page.equals("")  ) {
			page="1";
		}
		HotelUserVO userVo = (HotelUserVO)request.getSession().getAttribute("user");
		
		String userId = userVo.getUserId();
		
		ReservationVO res=new ReservationVO();
		res.setUserId(userId);
		res.setPage(page);
		
		ReservationDAO reservation = new ReservationDAO();
		List<ReservationVO> reservationList = reservation.bookings(res);
		
		
		int count = reservation.count(userId);
		String pageTag=PageUtil.generate(Integer.parseInt(page), count, 3,"/Soyeon_Hotel/bookings.do");
		request.setAttribute("reservationList", reservationList);
		
		request.setAttribute("pageTag", pageTag);
		
		
		return "/bookings.jsp";
	}

}
