package fr.treeptik.jpa.dao;

import fr.treeptik.jpa.entity.*;

public interface MemberDao extends Dao<Member>{

	void update(Member memberById);

}
