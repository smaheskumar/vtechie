package com.dione.delegator;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dione.dao.generic.GenericDao;
import com.dione.dao.generic.GenericDao.QueryType;
import com.dione.entity.TransactionDetails;
import com.dione.model.Transaction;
@Component
public class SampleDelegator {
	@Autowired
	private GenericDao dao;
	
	public List<Transaction> getAllTransactions() {
		List<Transaction> txns = new ArrayList<Transaction>();
		List<TransactionDetails> txnDetails = dao.fetchListFromNamedQuery(QueryType.JPQL, "getAllTxn");
		for(TransactionDetails details : txnDetails){
			txns.add(new Transaction(details.getId(), details.getCardNbr(), details.getMerchant(), details.getCategory(), details.getMerchantCity()));
		}
		return txns;
	}

}
