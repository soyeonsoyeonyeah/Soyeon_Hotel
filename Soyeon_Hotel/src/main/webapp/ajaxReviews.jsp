<%@page import="java.io.PrintWriter"%>
<%@page import="dao.ReviewsDAO"%>
<%@page import="vo.ReviewsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

// request에서 form 데이터 받기 시작

String userId = request.getParameter("userId");
String email = request.getParameter("email");
String reviewText = request.getParameter("reviewText");
String roomType = request.getParameter("roomType");
// request에서 form 데이터 받기 끝
System.out.println(userId);
System.out.println(reviewText);

//받아온 데이터 넣어서 vo객체 생성
ReviewsVO reviews = new ReviewsVO();
reviews.setUserId(userId);
reviews.setReviewText(reviewText);
reviews.setRoomType(roomType);
System.out.println(reviews);

//DAO객체 생성 후 메소드 호출
ReviewsDAO rv = new ReviewsDAO();
rv.addReview(reviews);


//gpt복사한거

//response.setContentType("application/json");
//response.setCharacterEncoding("UTF-8");
//PrintWriter out = response.getWriter();
//out.print("{ \"status\": \"success\" }");
//out.flush();
%>
{}

