package edu.bnu.fyp1.entity;

import java.sql.Date;
import java.util.List;

public class Crop_profile {
	private Long cropProfileId;
	private String cropProfileName;
	private Date startDate;
	private Date endDate;
	private int totalWeight;
	private int acres;
	private String seed;
	private int sellingRate;
	private String cropDescription;
	private User user;
	private Long userId;
	private List<Crop_Expense> crop_saleslist;
	private Long cropFinish;
	private Long cropBlock;
	private Long sellingAmount;
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCropProfileName() {
		return cropProfileName;
	}

	public void setCropProfileName(String cropProfileName) {
		this.cropProfileName = cropProfileName;
	}

	public Long getSellingAmount() {
		return sellingAmount;
	}

	public void setSellingAmount(Long sellingAmount) {
		this.sellingAmount = sellingAmount;
	}

	public Long getCropFinish() {
		return cropFinish;
	}

	public void setCropFinish(Long cropFinish) {
		this.cropFinish = cropFinish;
	}

	public Long getCropBlock() {
		return cropBlock;
	}

	public void setCropBlock(Long cropBlock) {
		this.cropBlock = cropBlock;
	}

	public Long getCropProfileId() {
		return cropProfileId;
	}

	public void setCropProfileId(Long cropProfileId) {
		this.cropProfileId = cropProfileId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getTotalWeight() {
		return totalWeight;
	}

	public void setTotalWeight(int totalWeight) {
		this.totalWeight = totalWeight;
	}

	public int getAcres() {
		return acres;
	}

	public void setAcres(int acres) {
		this.acres = acres;
	}

	public String getSeed() {
		return seed;
	}

	public void setSeed(String seed) {
		this.seed = seed;
	}

	public int getSellingRate() {
		return sellingRate;
	}

	public void setSellingRate(int sellingRate) {
		this.sellingRate = sellingRate;
	}

	public String getCropDescription() {
		return cropDescription;
	}

	public void setCropDescription(String cropDescription) {
		this.cropDescription = cropDescription;
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

	public List<Crop_Expense> getCrop_saleslist() {
		return crop_saleslist;
	}

	public void setCrop_saleslist(List<Crop_Expense> crop_saleslist) {
		this.crop_saleslist = crop_saleslist;
	}

}
