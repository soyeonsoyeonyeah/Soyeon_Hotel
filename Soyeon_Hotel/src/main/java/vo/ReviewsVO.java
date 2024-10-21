package vo;
import java.sql.Timestamp;

public class ReviewsVO {
    private String reviewId;
    private String userId;
    private String roomId;
    private String reviewText;
    private int rating;
    private String createdAt;
    private String roomType;

    public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getReviewId() {
        return reviewId;
    }

    public void setReviewId(String reviewId) {
        this.reviewId = reviewId;
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

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

	@Override
	public String toString() {
		return "ReviewsVO [reviewId=" + reviewId + ", userId=" + userId + ", roomId=" + roomId + ", reviewText="
				+ reviewText + ", rating=" + rating + ", createdAt=" + createdAt + ", roomType=" + roomType + "]";
	}
}


