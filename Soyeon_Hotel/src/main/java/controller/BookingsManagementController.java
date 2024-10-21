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



public class BookingsManagementController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		
		String page = request.getParameter("page");
		if(page==null || page.equals("")  ) {
			page="1";
		}
		
		System.out.println(page);
		/*
		 * HotelUserVO userVo = (HotelUserVO)request.getSession().getAttribute("user");
		 * 
		 * String userId = userVo.getUserId();
		 * 
		 * ReservationVO res = new ReservationVO(); res.setUserId(userId);
		 * res.setPage(page);
		 */
		
		ReservationDAO reservation = new ReservationDAO();
		List<ReservationVO> reservationList = reservation.allBookings(Integer.parseInt(page));
		
		
		int count = reservation.countForAllBookings();
		String pageTag=PageUtilForAllBookings.generate(Integer.parseInt(page), count, 3,"/Soyeon_Hotel/bookingsManagement.do");
		request.setAttribute("reservationList", reservationList);
		
		request.setAttribute("pageTag", pageTag);
		
		
		return "/bookingsManagement.jsp";
	}

}
