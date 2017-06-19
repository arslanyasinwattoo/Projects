package edu.bnu.fyp1.entity;

import java.sql.Date;

public class Manage_sale_record {
	private Long manageSaleRecordId;
	private Long cropName;
	private Long customerName;
	private Long weightOfBag;
	private Long noBags;
	private float cropLeftInKgs;
	private float totalWeight;
	private float weightInMoands;
	private float weightInKg;
	private Long totalAmount;
	private Long totalCommision;
	private Long currentAmount;
	private Long bankCharges;
	private Long laborCharge;
	private Long currentCommision;
	private Long purchaserName;
	private Long totalCropSoldToPurchaser;
	private Long funds;
	private User user;
	private Long userId;
	private Date saleDate;

	public Long getNoBags() {
		return noBags;
	}

	public void setNoBags(Long noBag) {
		this.noBags = noBag;
	}

	public float getWeightInKg() {
		return weightInKg;
	}

	public void setWeightInKg(float weightInKg) {
		this.weightInKg = weightInKg;
	}

	public Date getSaleDate() {
		return saleDate;
	}

	public void setSaleDate(Date saleDate) {
		this.saleDate = saleDate;
	}

	public Long getManageSaleRecordId() {
		return manageSaleRecordId;
	}

	public void setManageSaleRecordId(Long manageSaleRecordId) {
		this.manageSaleRecordId = manageSaleRecordId;
	}

	public Long getCropName() {
		return cropName;
	}

	public void setCropName(Long cropName) {
		this.cropName = cropName;
	}

	public Long getCustomerName() {
		return customerName;
	}

	public void setCustomerName(Long customerName) {
		this.customerName = customerName;
	}

	public Long getWeightOfBag() {
		return weightOfBag;
	}

	public void setWeightOfBag(Long weightOfBag) {
		this.weightOfBag = weightOfBag;
	}

	public float getCropLeftInKgs() {
		return cropLeftInKgs;
	}

	public void setCropLeftInKgs(float cropLeftInKgs) {
		this.cropLeftInKgs = cropLeftInKgs;
	}

	public float getTotalWeight() {
		return totalWeight;
	}

	public void setTotalWeight(float totalWeight) {
		this.totalWeight = totalWeight;
	}

	public float getWeightInMoands() {
		return weightInMoands;
	}

	public void setWeightInMoands(float weightInMoands) {
		this.weightInMoands = weightInMoands;
	}

	public Long getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Long totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Long getTotalCommision() {
		return totalCommision;
	}

	public void setTotalCommision(Long totalCommision) {
		this.totalCommision = totalCommision;
	}

	public Long getCurrentAmount() {
		return currentAmount;
	}

	public void setCurrentAmount(Long currentAmount) {
		this.currentAmount = currentAmount;
	}

	public Long getBankCharges() {
		return bankCharges;
	}

	public void setBankCharges(Long bankCharges) {
		this.bankCharges = bankCharges;
	}

	public Long getLaborCharge() {
		return laborCharge;
	}

	public void setLaborCharge(Long laborCharge) {
		this.laborCharge = laborCharge;
	}

	public Long getCurrentCommision() {
		return currentCommision;
	}

	public void setCurrentCommision(Long currentCommision) {
		this.currentCommision = currentCommision;
	}

	public Long getPurchaserName() {
		return purchaserName;
	}

	public void setPurchaserName(Long purchaserName) {
		this.purchaserName = purchaserName;
	}

	public Long getTotalCropSoldToPurchaser() {
		return totalCropSoldToPurchaser;
	}

	public void setTotalCropSoldToPurchaser(Long totalCropSoldToPurchaser) {
		this.totalCropSoldToPurchaser = totalCropSoldToPurchaser;
	}

	public Long getFunds() {
		return funds;
	}

	public void setFunds(Long funds) {
		this.funds = funds;
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
