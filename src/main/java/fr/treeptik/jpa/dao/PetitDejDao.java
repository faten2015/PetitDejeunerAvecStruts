package fr.treeptik.jpa.dao;

import java.util.List;

import fr.treeptik.jpa.entity.PetitDej;

public interface PetitDejDao extends Dao<PetitDej> {
	public PetitDej find(int id);
	public List<PetitDej> findAll();
	public void delete(PetitDej obj);
	public void update(PetitDej obj);

}