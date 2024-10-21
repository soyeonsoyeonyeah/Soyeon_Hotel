package vo;

import java.util.Date;
import java.util.UUID;

public class ReservationVO {

	private String bookingId;
	private String userId;
	private String roomId;	
	private String checkInDate;
	private String checkOutDate;
	private long numberOfNights;
	private int totalPrice;
	private String reservationDate;
	private String status = "confirmed";
	private RoomsVO rooms;
	private String page;
	
	
	
	
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public RoomsVO getRooms() {
		return rooms;
	}
	public void setRooms(RoomsVO rooms) {
		this.rooms = rooms;
	}
	public ReservationVO() {
		
	}
	public ReservationVO(String bookingId, String userId, String roomId, String checkInDate, String checkOutDate,
			long numberOfNights, int totalPrice, String reservationDate, String status) {
		super();
		this.bookingId = bookingId;
		this.userId = userId;
		this.roomId = roomId;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.numberOfNights = numberOfNights;
		this.totalPrice = totalPrice;
		this.reservationDate = reservationDate;
		this.status = status;
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	public String getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public long getNumberOfNights() {
		return numberOfNights;
	}
	public void setNumberOfNights(long numberOfNights) {
		this.numberOfNights = numberOfNights;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ReservationVO [bookingId=" + bookingId + ", userId=" + userId + ", roomId=" + roomId + ", checkInDate="
				+ checkInDate + ", checkOutDate=" + checkOutDate + ", numberOfNights=" + numberOfNights
				+ ", totalPrice=" + totalPrice + ", reservationDate=" + reservationDate + ", status=" + status
				+ ", rooms=" + rooms + ", page=" + page + "]";
	}
	
	
		
}
