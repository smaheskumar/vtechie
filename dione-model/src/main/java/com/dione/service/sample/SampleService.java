package com.dione.service.sample;

import java.util.List;

import com.dione.model.Transaction;
import com.dione.model.sample.SampleRequest;
import com.dione.model.sample.SampleResponse;

public interface SampleService {
	public SampleResponse sampleOperation(SampleRequest sampleRequest);
	
	public List<Transaction> getAllTransactions();
}
