<%@page import="com.google.gson.Gson"%>
<%@page import="vo.HotelUserVO"%>
<%@page import="dao.HotelUserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("userId"); // 파라미터 이름을 문자열 상수로 전달

// 아이디 중복 확인
	HotelUserDAO userDAO = new HotelUserDAO();
	HotelUserVO existingUser = userDAO.getUserById(id);
	
	String result="";
	if (existingUser != null) {
		result = "이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요.";
		/* request.setAttribute("errorMessage", "이미 사용 중인 아이디입니다. 다른 아이디를 입력해주세요."); */
	}
	Gson gson = new Gson();
	String json = gson.toJson(result);
	
	response.setContentType("application/json");
	response.setCharacterEncoding("UTF-8");
	
	out.print(json);
	out.flush();

%>