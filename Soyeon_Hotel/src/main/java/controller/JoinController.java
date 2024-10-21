package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HotelUserDAO;
import framework.Controller;
import vo.HotelUserVO;

public class JoinController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id"); // 파라미터 이름을 문자열 상수로 전달
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password"); // 파라미터 이름을 문자열 상수로 전달
		String phoneNumber = request.getParameter("phone_number");
		String address = request.getParameter("address");

		/*
		 * // 아이디 중복 확인 HotelUserDAO userDAO = new HotelUserDAO(); HotelUserVO
		 * existingUser = userDAO.getUserById(id);
		 * 
		 * if (existingUser != null) { request.setAttribute("errorMessage",
		 * "이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요."); return "/signup.jsp"; // 중복된 아이디일 경우 다시
		 * 회원가입 페이지로 이동 }
		 * 
		 * // 아이디가 중복되지 않으면 회원가입 처리
		 * 
		 * 
		 */
		
		HotelUserDAO userDAO = new HotelUserDAO();
		HotelUserVO user = new HotelUserVO();
		user.setUserId(id);
		user.setUsername(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setPhoneNumber(phoneNumber);
		user.setAddress(address);

		userDAO.signUp(user);
		

        // 회원가입 성공 메시지를 request에 저장
		 request.setAttribute("success", "회원가입에 성공했습니다.");

        return "/LoginSignUp.jsp"; // 회원가입 성공 시 메인 페이지로 이동
	}

}
