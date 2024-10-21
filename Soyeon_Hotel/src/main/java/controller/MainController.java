package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoomTypeDAO;
import framework.Controller;
import vo.RoomTypeVO;

public class MainController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		RoomTypeDAO roomTypeDAO = new RoomTypeDAO();
		List<RoomTypeVO> roomList = roomTypeDAO.getAllRoomType();
		
		for(RoomTypeVO vo : roomList) {
			System.out.println(vo);
		}
		
		request.setAttribute("roomList", roomList);
		return "/index.jsp";
	}

}
