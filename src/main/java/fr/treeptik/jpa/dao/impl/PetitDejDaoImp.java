package fr.treeptik.jpa.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;


import fr.treeptik.jpa.entity.PetitDej;
import fr.treeptik.jpa.dao.PetitDejDao;


public class PetitDejDaoImp implements PetitDejDao {

	private EntityManager entityManager;
	private Map<Integer,PetitDej> listPetitDej=new HashMap<Integer,PetitDej>();

	public PetitDejDaoImp(EntityManager entityManager) {
		this.entityManager = entityManager;
	
	}

	@Override
	public PetitDej find(int id) {
		return entityManager.find(PetitDej.class, id);
	}

	@Override
	public List<PetitDej> findAll() {
		return entityManager.createQuery("Select p from PetitDej p", PetitDej.class).getResultList();
	}
	
	public PetitDej getPetitDej(Integer id){
		return entityManager.find(PetitDej.class,id);
	}
	

	public PetitDej persist(PetitDej obj) {
		entityManager.getTransaction().begin();
		entityManager.persist(obj);
		entityManager.getTransaction().commit();
		return obj;
	}

	

	public void update(PetitDej obj) {
		entityManager.getTransaction().begin();
		entityManager.merge(obj);
		entityManager.getTransaction().commit();
	}

	@Override
	public void delete(PetitDej obj) {
		entityManager.getTransaction().begin();
		entityManager.remove(obj);
		entityManager.getTransaction().commit();
	}


	

	

}