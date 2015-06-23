package com.dione.model;

import java.io.Serializable;


public class Transaction implements Serializable {
	private static final long serialVersionUID = -5873821878423558305L;
	private Integer id;
	private String walletId;
	private String merchant;
	private String description;
	private Integer userAge;
	
	public Transaction(Integer id, String walletId, String merchant,
			String description, Integer userAge) {
		super();
		this.id = id;
		this.walletId = walletId;
		this.merchant = merchant;
		this.description = description;
		this.userAge = userAge;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getWalletId() {
		return walletId;
	}

	public void setWalletId(String walletId) {
		this.walletId = walletId;
	}

	public String getMerchant() {
		return merchant;
	}

	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getUserAge() {
		return userAge;
	}

	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}

	@Override
	public String toString() {
		return "Transaction [id=" + id + ", walletId=" + walletId
				+ ", merchant=" + merchant + ", description=" + description
				+ ", userAge=" + userAge + "]";
	}
}
