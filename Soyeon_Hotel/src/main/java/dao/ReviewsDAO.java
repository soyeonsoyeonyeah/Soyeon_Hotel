package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;


import vo.ReservationVO;
import vo.ReviewsVO;
import vo.RoomTypeVO;
import vo.RoomsVO;

public class ReviewsDAO {

	private SqlSession session;

	public ReviewsDAO() {
		session = new MyBatisConfig().getInstance();
		System.out.println("session : " + session);
	}

	public void addReview(ReviewsVO reviews) {

		session.insert("reviewsMapper.addReview", reviews);
		session.commit();
		session.close();
	}

	public List<ReviewsVO> getReviewsByRoomType(String roomType) {
		return session.selectList("reviewsMapper.getReviewsByRoomType", roomType);
	}

}
