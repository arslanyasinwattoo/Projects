package edu.bnu.fyp1.entity;

public class Crop_info {
	private Long cropInfoId;
	private String cropName;
	private String cropDuration;
	private User user;
	private Long userId;

	public Long getCropInfoId() {
		return cropInfoId;
	}

	public void setCropInfoId(Long cropInfoId) {
		this.cropInfoId = cropInfoId;
	}

	public String getCropName() {
		return cropName;
	}

	public void setCropName(String cropName) {
		this.cropName = cropName;
	}

	public String getCropDuration() {
		return cropDuration;
	}

	public void setCropDuration(String cropDuration) {
		this.cropDuration = cropDuration;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

}
