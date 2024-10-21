package vo;

public class RoomsVO {

	private String roomId;
	private String roomTypeCd;
	private String available;
	
	private RoomTypeVO roomType;
	
	public RoomTypeVO getRoomType() {
		return roomType;
	}
	public void setRoomType(RoomTypeVO roomType) {
		this.roomType = roomType;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getRoomTypeCd() {
		return roomTypeCd;
	}
	public void setRoomTypeCd(String roomTypeCd) {
		this.roomTypeCd = roomTypeCd;
	}
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	@Override
	public String toString() {
		return "RoomsVO [roomId=" + roomId + ", roomTypeCd=" + roomTypeCd + ", available=" + available + ", roomType="
				+ roomType + "]";
	}
	
	
}
