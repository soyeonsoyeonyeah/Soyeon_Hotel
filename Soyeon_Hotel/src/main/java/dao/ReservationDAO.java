package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.HotelUserVO;
import vo.ReservationVO;
import vo.RoomTypeVO;
import vo.RoomsVO;

public class ReservationDAO {

	private SqlSession session;

	public ReservationDAO() {
		session = new MyBatisConfig().getInstance();
		System.out.println("session : " + session);
	}

	public List<RoomTypeVO> getAllRoomType() {

		List<RoomTypeVO> roomList = session.selectList("availabilityMapper.getAvailableRoomTypes");
		return roomList;
	}


	public RoomTypeVO getRoomTypeByRoomTypeCd(String roomTypeCd) {
		RoomTypeVO room = session.selectOne("roomMapper.getRoomTypeByRoomTypeCd", roomTypeCd);
		return room;
	}
	
	public void insertReservation(ReservationVO reservation) {
		
		session.selectOne("paymentMapper.insertReservation",reservation);
		session.commit();
		session.close();
	}
	
	
	public void signUp(HotelUserVO user) {
		session.selectOne("HotelUserMapper.insertUser", user);

		session.commit(); // 여기서 커밋을 해줘야 데이터가 실제로 삽입됩니다.
		session.close();
	}
	
	public RoomTypeVO selectOneRoomTypeVOByRoomType(String roomType) {
		return session.selectOne("roomMapper.selectOneRoomTypeVOByRoomType", roomType);
	}
	
	public List<RoomsVO> selectListAvailableRooms(String roomTypeCd){
		return session.selectList("roomMapper.selectListAvailableRooms", roomTypeCd);
	}
	
	public List<ReservationVO> bookings(ReservationVO res) {
		return session.selectList("reservationMapper.bookings",res);
	}
	
	//관리자용 모든 예약 확인하는 메소드
	public List<ReservationVO> allBookings(int page) {
		return session.selectList("reservationMapper.allBookings",page);
	}
	
	public List<String> findRoomType(String id) {
		return session.selectList("reservationMapper.findRoomType",id);
	}
	
	//예약 취소
	public void cancellation(String bookingId) {
        System.out.println("값이 들어왔니?" + bookingId);

		session.selectOne("reservationMapper.cancellation",bookingId);
		session.commit();
		session.close();
	}
	
	public int count (String id) {
		return session.selectOne("reservationMapper.count", id);
	}
	
	//관리자용 호텔 예약시 필요한 count 
	public int countForAllBookings () {
		return session.selectOne("reservationMapper.countForAllBookings");
	}
	
	
	//날짜별로 예약이 가능한 방을 조회
	public List<RoomTypeVO> getAvailableRoomTypesByDate(ReservationVO res) {

		List<RoomTypeVO> roomList = session.selectList("availabilityMapper.getAvailableRoomTypesByDate",res);
		return roomList;
	}
	
	
}
