package edu.bnu.Lcs.entity;

public class Company {

	private Long companyId;
	private String companyName;
	private String companyAddress;
	private Long companyContactNumber;
	private String companyEmailid;
	private String companyCity;
	private String companyCategory;
	private long userId;
	private long status;
	private long block;
	private Long amount;

	public Long getAmount() {
		return amount;
	}

	public void setAmount(Long amount) {
		this.amount = amount;
	}

	public Long getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Long companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyAddress() {
		return this.companyAddress;
	}

	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}

	public Long getCompanyContactNumber() {
		return this.companyContactNumber;
	}

	public void setCompanyContactNumber(Long companyContactNumber) {
		this.companyContactNumber = companyContactNumber;
	}

	public String getCompanyEmailid() {
		return this.companyEmailid;
	}

	public void setCompanyEmailid(String companyEmailid) {
		this.companyEmailid = companyEmailid;
	}

	public String getCompanyCity() {
		return this.companyCity;
	}

	public void setCompanyCity(String companyCity) {
		this.companyCity = companyCity;
	}

	public String getCompanyCategory() {
		return this.companyCategory;
	}

	public void setCompanyCategory(String companyCategory) {
		this.companyCategory = companyCategory;
	}

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public long getStatus() {
		return this.status;
	}

	public void setStatus(long status) {
		this.status = status;
	}

	public long getBlock() {
		return this.block;
	}

	public void setBlock(long block) {
		this.block = block;
	}
}
