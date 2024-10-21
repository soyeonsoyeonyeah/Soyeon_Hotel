package vo;

public class HotelUserVO {

	private String userId;
	private String username;
	private String email;
	private String password;
	private String phoneNumber;
	private String address;
	private String userType;

	// 기본 생성자
	public HotelUserVO() {
	    }


	// 생성자 - 모든 필드 초기화
	public HotelUserVO(String userId, String username, String email, String password, String phoneNumber, String address) {
	        this.userId = userId;
	        this.username = username;
	        this.email = email;
	        this.password = password;
	        this.phoneNumber = phoneNumber;
	        this.address = address;
	    }

	// Getter 및 Setter 메서드
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserType() {
		return userType;
	}
	
	public void setUserType(String userType) {
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "HotelUserVO [userId=" + userId + ", username=" + username + ", email=" + email + ", password="
				+ password + ", phoneNumber=" + phoneNumber + ", address=" + address + ", userType=" + userType + "]";
	}
}
