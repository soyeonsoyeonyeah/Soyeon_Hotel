package vo;
public class RoomTypeVO {
    private String roomTypeCd;
    private String roomType;
    private int capacity;
    private String bedType;
    private String roomSize;
    private int price;
    private String photoUrl;

    
    
    public RoomTypeVO() {
		super();
	}

	// 생성자
    public RoomTypeVO(String roomTypeCd, String roomType, int capacity, String bedType, String roomSize, int price, String photoUrl) {
        this.roomTypeCd = roomTypeCd;
        this.roomType = roomType;
        this.capacity = capacity;
        this.bedType = bedType;
        this.roomSize = roomSize;
        this.price = price;
        this.photoUrl = photoUrl;
    }
    
    // Getter 및 Setter
    public String getRoomTypeCd() {
        return roomTypeCd;
    }

    public void setRoomTypeCd(String roomTypeCd) {
        this.roomTypeCd = roomTypeCd;
    }

    public String getRoomType() {
        return roomType;
    }

    public void setRoomType(String roomType) {
        this.roomType = roomType;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public String getBedType() {
        return bedType;
    }

    public void setBedType(String bedType) {
        this.bedType = bedType;
    }

    public String getRoomSize() {
        return roomSize;
    }

    public void setRoomSize(String roomSize) {
        this.roomSize = roomSize;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

	@Override
	public String toString() {
		return "RoomTypeVO [roomTypeCd=" + roomTypeCd + ", roomType=" + roomType + ", capacity=" + capacity
				+ ", bedType=" + bedType + ", roomSize=" + roomSize + ", price=" + price + ", photoUrl=" + photoUrl
				+ "]";
	}
    
    
}
