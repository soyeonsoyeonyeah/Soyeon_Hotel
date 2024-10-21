package controller;

import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ReviewsDAO;
import dao.RoomTypeDAO;
import framework.Controller;
import vo.HotelUserVO;
import vo.ReservationVO;
import vo.ReviewsVO;
import vo.RoomTypeVO;

public class ReviewsController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();

		// request에서 form 데이터 받기 시작
		
		String userId = request.getParameter("userId");
        String email = request.getParameter("email");
        String reviewText = request.getParameter("reviewText");
        String roomType = request.getParameter("roomType");
        // request에서 form 데이터 받기 끝

        //받아온 데이터 넣어서 vo객체 생성
        ReviewsVO reviews = new ReviewsVO();
        reviews.setUserId(userId);
        reviews.setReviewText(reviewText);
        
        //DAO객체 생성 후 메소드 호출
        ReviewsDAO rv = new ReviewsDAO();
        rv.addReview(reviews);
        
        
        //gpt복사한거
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.print("{ \"status\": \"success\" }");
        out.flush();
		
		
        return "/roomdetails.jsp";
    }
    
    
}
