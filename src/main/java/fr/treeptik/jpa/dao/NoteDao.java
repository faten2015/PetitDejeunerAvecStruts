package fr.treeptik.jpa.dao;

import fr.treeptik.jpa.entity.*;

public interface NoteDao extends Dao<Note>{

	void update(Note noteById);

}
