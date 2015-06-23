package com.dione.dao.generic;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dione.dao.generic.GenericDao.QueryType;
import com.dione.entity.TransactionDetails;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:dioneContext.xml" })
public class GenericDaoTest {

	@Autowired
	private GenericDao dao;
	@Test
	public void testGetTransanctionDetails(){
		TransactionDetails details = dao.getById(TransactionDetails.class, 1);
		assertNotNull(details);
		assertEquals("XYZ001",details.getWalletId());
		assertEquals("Grocery", details.getDescription());
		assertEquals("Lucky", details.getMerchant());
	}

	@Test
	public void testGetAllTxnDetails(){
		List<TransactionDetails> txnList = dao.fetchListFromNamedQuery(QueryType.JPQL, "getAllTxn");
		assertNotNull(txnList);
		assertTrue("No record found",txnList.size()>0);
		for(TransactionDetails details : txnList) {
			if(details.equals("XYZ001")) {
				assertEquals("XYZ001",details.getWalletId());
				assertEquals("Grocery", details.getDescription());
				assertEquals("Lucky", details.getMerchant());
			}
		}
	}
}
