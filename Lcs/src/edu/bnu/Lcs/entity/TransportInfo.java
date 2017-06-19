package edu.bnu.Lcs.entity;

public class TransportInfo {

	private Long transportInfoId;
	private String truckSize;
	private String truckNumber;
	private Integer active;
	private long usersId;

	// public TransportInfo(long usersId) {
	// this.usersId = usersId;
	// }

	public Long getTransportInfoId() {
		return this.transportInfoId;
	}

	public void setTransportInfoId(Long transportInfoId) {
		this.transportInfoId = transportInfoId;
	}

	public String getTruckSize() {
		return this.truckSize;
	}

	public void setTruckSize(String truckSize) {
		this.truckSize = truckSize;
	}

	public String getTruckNumber() {
		return this.truckNumber;
	}

	public void setTruckNumber(String truckNumber) {
		this.truckNumber = truckNumber;
	}

	public Integer getActive() {
		return this.active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public long getUsersId() {
		return this.usersId;
	}

	public void setUsersId(long usersId) {
		this.usersId = usersId;
	}

}
