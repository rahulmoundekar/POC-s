package com.model;

public class EquipmentDetail {

	private int equipId;
	private String companyName;
	private String equipName;
	private double pricePerQuantity;
	private double totalPrice;
	private int totalQuantity;

	public int getEquipId() {
		return equipId;
	}

	public void setEquipId(int equipId) {
		this.equipId = equipId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getEquipName() {
		return equipName;
	}

	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}

	public double getPricePerQuantity() {
		return pricePerQuantity;
	}

	public void setPricePerQuantity(double pricePerQuantity) {
		this.pricePerQuantity = pricePerQuantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

}
