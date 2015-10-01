package fr.treeptik.jpa.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;

import fr.treeptik.jpa.entity.Member;
import fr.treeptik.jpa.dao.MemberDao;

public class MemberDaoImpl implements MemberDao {

	private EntityManager entityManager;

	public MemberDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	
	}

	@Override
	public Member find(int id) {
		Member find = entityManager.find(Member.class, id);
		return find;
	}

	@Override
	public List<Member> findAll() {
		return entityManager.createQuery("Select p from Member p", Member.class).getResultList();
	}
	
	@Override
	public Member persist(Member obj) {
		entityManager.getTransaction().begin();
		entityManager.persist(obj);
		entityManager.getTransaction().commit();
		return obj;
	}

	@Override
	public void delete(Member obj) {
		if (obj != null){
		entityManager.getTransaction().begin();
		entityManager.remove(obj);
  	    entityManager.getTransaction().commit();
		}
	}

	@Override
	public void update(Member obj) {
		entityManager.getTransaction().begin();
		entityManager.merge(obj);
		entityManager.getTransaction().commit();
		
	}

	

}