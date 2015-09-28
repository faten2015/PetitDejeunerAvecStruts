package fr.treeptik.jpa.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;

import fr.treeptik.jpa.entity.Team;
import fr.treeptik.jpa.dao.TeamDao;

public class TeamDaoImpl implements TeamDao {

	private EntityManager entityManager;

	public TeamDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	
	}

	@Override
	public Team find(int id) {
		return entityManager.find(Team.class, id);
	}

	@Override
	public List<Team> findAll() {
		return entityManager.createQuery("Select p from Team p", Team.class).getResultList();
	}
	
	@Override
	public Team persist(Team obj) {
		entityManager.getTransaction().begin();
		entityManager.persist(obj);
		entityManager.getTransaction().commit();
		return obj;
	}

	@Override
	public void delete(Team obj) {
		entityManager.getTransaction().begin();
		entityManager.remove(obj);
		entityManager.getTransaction().commit();
	}

	@Override
	public void update(Team obj) {
		entityManager.getTransaction().begin();
		entityManager.merge(obj);
		entityManager.getTransaction().commit();
		
	}

	

}