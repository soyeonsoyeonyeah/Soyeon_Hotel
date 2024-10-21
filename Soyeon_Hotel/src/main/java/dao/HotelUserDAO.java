package dao;

import org.apache.ibatis.session.SqlSession;

import vo.HotelUserVO;

public class HotelUserDAO {

	private SqlSession session;

	public HotelUserDAO() {
		session = new MyBatisConfig().getInstance();
		System.out.println("session : " + session);
	}

	public HotelUserVO getUserById(String id) {

		HotelUserVO user = session.selectOne("HotelUserMapper.getUserById", id);

		return user;
	}

	public void signUp(HotelUserVO user) {
		session.selectOne("HotelUserMapper.insertUser", user);

		session.commit(); // 여기서 커밋을 해줘야 데이터가 실제로 삽입됩니다.
		session.close();
	}

}
