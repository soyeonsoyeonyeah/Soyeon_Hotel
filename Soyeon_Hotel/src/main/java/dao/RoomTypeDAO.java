package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.RoomTypeVO;

public class RoomTypeDAO {

	private SqlSession session;

	public RoomTypeDAO() {
		session = new MyBatisConfig().getInstance();
		System.out.println("session : " + session);
	}

	public List<RoomTypeVO> getAllRoomType() {

		List<RoomTypeVO> roomList = session.selectList("roomMapper.getAllRoomTypes");
		return roomList;
	}


	public RoomTypeVO getRoomTypeByRoomTypeCd(String roomTypeCd) {
		RoomTypeVO room = session.selectOne("roomMapper.getRoomTypeByRoomTypeCd", roomTypeCd);
		return room;
	}
}
