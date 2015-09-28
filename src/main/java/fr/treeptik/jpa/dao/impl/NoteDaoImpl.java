package fr.treeptik.jpa.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;

import fr.treeptik.jpa.entity.Note;
import fr.treeptik.jpa.dao.NoteDao;

public class NoteDaoImpl implements NoteDao {

	private EntityManager entityManager;

	public NoteDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	
	}

	@Override
	public Note find(int id) {
		return entityManager.find(Note.class, id);
	}

	@Override
	public List<Note> findAll() {
		return entityManager.createQuery("Select p from Note p", Note.class).getResultList();
	}
	
	@Override
	public Note persist(Note obj) {
		entityManager.getTransaction().begin();
		entityManager.persist(obj);
		entityManager.getTransaction().commit();
		return obj;
	}

	@Override
	public void delete(Note obj) {
		entityManager.getTransaction().begin();
		entityManager.remove(obj);
		entityManager.getTransaction().commit();
	}

	@Override
	public void update(Note obj) {
		entityManager.getTransaction().begin();
		entityManager.merge(obj);
		entityManager.getTransaction().commit();
	}

	

}