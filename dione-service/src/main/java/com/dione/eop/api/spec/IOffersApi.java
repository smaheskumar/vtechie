/**
 * 
 */
package com.dione.eop.api.spec;

import java.util.List;

import com.dione.eop.api.io.Offer;
import com.dione.eop.api.io.SearchRequest;

/**
 * @author Ravi K
 *
 */
public interface IOffersApi {
	
	Offer getOfferDetail(String offerId);
	List<Offer> searchOffers(SearchRequest searchRequest);
	String getRecentOffers(Integer hours);
}
