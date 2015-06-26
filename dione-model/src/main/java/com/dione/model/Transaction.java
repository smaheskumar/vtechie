package com.dione.model;

import java.io.Serializable;


public class Transaction implements Serializable {
	private static final long serialVersionUID = -5873821878423558305L;
	private Integer id;
	private String walletId;
	private String merchant;
	private String description;
	private String merchantCity;
	
	public Transaction(Integer id, String walletId, String merchant, String description, String merchantCity) {
		super();
		this.id = id;
		this.walletId = walletId;
		this.merchant = merchant;
		this.description = description;
		this.merchantCity = merchantCity;
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

	public String getMerchantCity() {
		return merchantCity;
	}

	public void setMerchantCity(String merchantCity) {
		this.merchantCity = merchantCity;
	}

	@Override
	public String toString() {
		return String
				.format("{id:%s, walletId:%s, merchant:%s, description:%s, merchantCity:%s}",
						id, walletId, merchant, description, merchantCity);
	}
}
