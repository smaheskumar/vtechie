package com.dione.dao.generic;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dione.exception.DioneException;
import com.dione.utils.CollectionsUtils;
/**
 * 
 * @author Mahesh
 *
 */
@Component
public class GenericDao {
	@PersistenceContext(unitName = "DionePU")
	private EntityManager entityManager;

	public static enum QueryType{
		NATIVE,
		JPQL
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	public <T> T save(T entity) {
		entityManager.persist(entity);
		return entity;
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false, rollbackFor = Exception.class)
	public <T> T merge(T entity) {
		return entityManager.merge(entity);
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> T getById(Class<T> type,Object id) {
		return entityManager.find(type, id);
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> List<T> fetchListFromNamedQuery(QueryType type, String namedQuery){
		return fetchListFromNamedQueryWithNamedParam(type, namedQuery, null);
	}
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> List<T> fetchListFromNamedQueryWithNamedParam(QueryType type,String namedQuery, Map<String, ?> namedParam){
		Query query = (type == QueryType.JPQL) ? entityManager.createNamedQuery(namedQuery) : entityManager.createNativeQuery(namedQuery);
		if(namedParam!=null){
			for(Map.Entry<String, ?> entry : namedParam.entrySet()){
				query.setParameter(entry.getKey(), entry.getValue());
			}
		}
		return query.getResultList();
	}
	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> List<T> fetchListFromNamedQueryWithIndexedParam(QueryType type,String namedQuery, Map<Integer, ?> indexedParam){
		Query query = (type == QueryType.JPQL) ? entityManager.createNamedQuery(namedQuery) : entityManager.createNativeQuery(namedQuery);
		if(indexedParam!=null){
			for(Map.Entry<Integer, ?> entry : indexedParam.entrySet()){
				query.setParameter(entry.getKey(), entry.getValue());
			}
		}
		return query.getResultList();
	}

	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> T fetchFromNamedQuery(QueryType type, String namedQuery) throws DioneException{
		List<T> result = fetchListFromNamedQueryWithNamedParam(type, namedQuery, null);
		return getSingleRecord(result);
	}
	private <T> T getSingleRecord(List<T> result) throws DioneException {
		if(CollectionsUtils.isNotEmpty(result)){
			if(result.size()==1) {
				return result.get(0);
			}else {
				throw new DioneException("Expecting one record, but returns "+result.size()+" records");
			}
		}
		throw new DioneException("Record not found");
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> T fetchFromNamedQueryWithNamedParam(QueryType type,String namedQuery, Map<String, ?> namedParam) throws DioneException{
		List<T> result = fetchListFromNamedQueryWithNamedParam(type, namedQuery, namedParam);
		return getSingleRecord(result);
	}
	@Transactional(propagation = Propagation.REQUIRED, readOnly = true)
	public <T> T fetchFromNamedQueryWithIndexedParam(QueryType type,String namedQuery, Map<Integer, ?> indexedParam) throws DioneException{
		List<T> result = fetchListFromNamedQueryWithIndexedParam(type, namedQuery, indexedParam);
		return getSingleRecord(result);
	}
}