package com.dione.service.sample.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dione.dao.generic.GenericDao;
import com.dione.dao.generic.GenericDao.QueryType;
import com.dione.delegator.SampleDelegator;
import com.dione.model.Transaction;
import com.dione.model.sample.SampleRequest;
import com.dione.model.sample.SampleResponse;
import com.dione.service.sample.SampleService;
@Service
public class SampleServiceImpl implements SampleService {

	@Autowired
	private SampleDelegator delegator;
	
	@Override
	public SampleResponse sampleOperation(SampleRequest sampleRequest) {
		return null;
	}

	@Override
	public List<Transaction> getAllTransactions() {
		return delegator.getAllTransactions();
	}

}
