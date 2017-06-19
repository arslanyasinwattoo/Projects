package edu.bnu.fyp1.entity;

import java.util.List;

public class User {
	private Long userId;
	private String userName;
	private String userPassword;
	private String userAddress;
	private String userCity;
	private String userEmail;
	private String userFirstname;
	private String userLastname;
	private int userPending;
	private int userBlock;
	private Long userContactNo;
	private String userOrganizationname;
	private String userRole;
	private List<Role> rolelist;
	private List<Crop_info> cropInfolist;
	private List<Expense_type> expenseTypelist;
	private List<Expense_subtype> expenseSubtypelist;
	private List<Account_head> accountHeadlist;
	private List<Manage_sale_record> manageSaleRecordlist;
	private List<Crop_profile> cropProfilelist;
	private List<Asset_inventory> assetInventorylist;

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getUserOrganizationname() {
		return userOrganizationname;
	}

	public void setUserOrganizationname(String userOrganizationname) {
		this.userOrganizationname = userOrganizationname;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserCity() {
		return userCity;
	}

	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserFirstname() {
		return userFirstname;
	}

	public void setUserFirstname(String userFirstname) {
		this.userFirstname = userFirstname;
	}

	public String getUserLastname() {
		return userLastname;
	}

	public void setUserLastname(String userLastname) {
		this.userLastname = userLastname;
	}

	public int getUserPending() {
		return userPending;
	}

	public void setUserPending(int userPending) {
		this.userPending = userPending;
	}

	public int getUserBlock() {
		return userBlock;
	}

	public void setUserBlock(int userBlock) {
		this.userBlock = userBlock;
	}

	public Long getUserContactNo() {
		return userContactNo;
	}

	public void setUserContactNo(Long userContactNo) {
		this.userContactNo = userContactNo;
	}

	public List<Role> getRolelist() {
		return rolelist;
	}

	public void setRolelist(List<Role> rolelist) {
		this.rolelist = rolelist;
	}

	public List<Crop_info> getCropInfolist() {
		return cropInfolist;
	}

	public void setCropInfolist(List<Crop_info> cropInfolist) {
		this.cropInfolist = cropInfolist;
	}

	public List<Expense_type> getExpenseTypelist() {
		return expenseTypelist;
	}

	public void setExpenseTypelist(List<Expense_type> expenseTypelist) {
		this.expenseTypelist = expenseTypelist;
	}

	public List<Expense_subtype> getExpenseSubtypelist() {
		return expenseSubtypelist;
	}

	public void setExpenseSubtypelist(List<Expense_subtype> expenseSubtypelist) {
		this.expenseSubtypelist = expenseSubtypelist;
	}

	public List<Account_head> getAccountHeadlist() {
		return accountHeadlist;
	}

	public void setAccountHeadlist(List<Account_head> accountHeadlist) {
		this.accountHeadlist = accountHeadlist;
	}

	public List<Manage_sale_record> getManageSaleRecordlist() {
		return manageSaleRecordlist;
	}

	public void setManageSaleRecordlist(
			List<Manage_sale_record> manageSaleRecordlist) {
		this.manageSaleRecordlist = manageSaleRecordlist;
	}

	public List<Crop_profile> getCropProfilelist() {
		return cropProfilelist;
	}

	public void setCropProfilelist(List<Crop_profile> cropProfilelist) {
		this.cropProfilelist = cropProfilelist;
	}

	public List<Asset_inventory> getAssetInventorylist() {
		return assetInventorylist;
	}

	public void setAssetInventorylist(List<Asset_inventory> assetInventorylist) {
		this.assetInventorylist = assetInventorylist;
	}

}
