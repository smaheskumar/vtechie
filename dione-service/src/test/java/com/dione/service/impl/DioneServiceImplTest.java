package com.dione.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dione.eop.api.search.gen.BrowseOffersResponse;
import com.dione.model.request.PersonalOfferRequest;
import com.dione.service.DioneService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:dioneContext.xml" })
public class DioneServiceImplTest {

	@Autowired
	private DioneService dioneService;
	@Test
	public void test() {
		PersonalOfferRequest personalOfferRequest = new PersonalOfferRequest();
		personalOfferRequest.setAppUserId("XYZ001");
		personalOfferRequest.setAppType("MASTERPASS");
		BrowseOffersResponse personalizedOffer = dioneService.getPersonalizedOffer(personalOfferRequest);
		assertNotNull(personalizedOffer);
	}

}
