package com.dione.delegator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dione.eop.api.ApiClient;
import com.dione.eop.api.io.SearchRequest;
import com.dione.eop.api.search.gen.BrowseOffersResponse;
import com.dione.model.request.PersonalOfferRequest;
import com.dione.service.AnalyticsProvider;
@Component
public class DioneDelegator {
	@Autowired
	private ApiClient eopClient;
	
	@Autowired
	private AnalyticsProvider analyticsProvider;

	public BrowseOffersResponse getPersonalizedOffer(PersonalOfferRequest personalOfferRequest) {
		SearchRequest filter = analyticsProvider.getFilter(personalOfferRequest.getAppUserId(), personalOfferRequest.getAppType());
		return eopClient.searchOffer(filter);
	}
}
