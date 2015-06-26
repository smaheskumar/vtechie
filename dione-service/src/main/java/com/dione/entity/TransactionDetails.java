package com.dione.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.hibernate.annotations.Type;
import org.joda.time.DateTime;

@Entity
@Table(name="dione_txn_details")
@NamedQueries({
	@NamedQuery(name="getAllTxn",query="Select txnDet from TransactionDetails txnDet order by txnDet.id")
})
public class TransactionDetails implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(unique = true, nullable = false)
	private Integer id;

	@Type(type = "org.joda.time.contrib.hibernate.PersistentDateTime")
    @Column(name = "TXNDATE")
    private DateTime txnDate;

	@Column(nullable = false, name="DE2_CARD_NBR")
	private String cardNbr;
	
	@Column(name="DW_MERCH_DBA")
	private String merchant;
	
	@Column(name="DW_MERCH_STATE_CD")
	private String category;
	
	@Column(name="DW_MERCH_CITY_NAME")
	private String merchantCity;
	
	@Column(name="CATEGORY")
	private String merchantState;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public DateTime getTxnDate() {
		return txnDate;
	}

	public void setTxnDate(DateTime txnDate) {
		this.txnDate = txnDate;
	}

	public String getCardNbr() {
		return cardNbr;
	}

	public void setCardNbr(String cardNbr) {
		this.cardNbr = cardNbr;
	}

	public String getMerchant() {
		return merchant;
	}

	public void setMerchant(String merchant) {
		this.merchant = merchant;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMerchantCity() {
		return merchantCity;
	}

	public void setMerchantCity(String merchantCity) {
		this.merchantCity = merchantCity;
	}

	public String getMerchantState() {
		return merchantState;
	}

	public void setMerchantState(String merchantState) {
		this.merchantState = merchantState;
	}

	@Override
	public String toString() {
		return String
				.format("{id:%s, txnDate:%s, cardNbr:%s, merchant:%s, category:%s, merchantCity:%s, merchantState:%s}",
						id, txnDate, "*******", merchant, category, merchantCity,
						merchantState);
	}
}
