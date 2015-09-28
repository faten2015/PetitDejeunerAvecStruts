package fr.treeptik.jpa.dao;

import java.util.List;

import fr.treeptik.jpa.entity.*;

public interface TeamDao extends Dao<Team>{
	public Team find(int id);
	public List<Team> findAll();
	public void update(Team teamById);
}
