package edu.bnu.fyp1.entity;

public class Asset_inventory {
	private Long assetInventoryId;
	private String itemName;
	private int itemQuantity;
	private String itemDescription;
	private User user;
	private Long userId;
	private Long itemBlock;

	public Long getItemBlock() {
		return itemBlock;
	}

	public void setItemBlock(Long itemBlock) {
		this.itemBlock = itemBlock;
	}

	public Long getAssetInventoryId() {
		return assetInventoryId;
	}

	public void setAssetInventoryId(Long assetInventoryId) {
		this.assetInventoryId = assetInventoryId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getItemQuantity() {
		return itemQuantity;
	}

	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity = itemQuantity;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
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
