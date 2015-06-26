package com.dione.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dione.delegator.DioneDelegator;
import com.dione.eop.api.search.gen.BrowseOffersResponse;
import com.dione.model.request.PersonalOfferRequest;
import com.dione.service.DioneService;

@Service
public class DioneServiceImpl implements DioneService{
	@Autowired
	private DioneDelegator dioneDelegator;
	@Override
	public BrowseOffersResponse getPersonalizedOffer(
			PersonalOfferRequest personalOfferRequest) {
		return dioneDelegator.getPersonalizedOffer(personalOfferRequest);
	}

}
