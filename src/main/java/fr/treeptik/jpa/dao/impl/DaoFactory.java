package fr.treeptik.jpa.dao.impl;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import fr.treeptik.jpa.dao.MemberDao;
import fr.treeptik.jpa.dao.NoteDao;
import fr.treeptik.jpa.dao.PetitDejDao;
import fr.treeptik.jpa.dao.TeamDao;

public class DaoFactory {


	private static PetitDejDao PetitDejDao;
	private static TeamDao teamDao;
	private static NoteDao noteDao;
	private static MemberDao memberDao;

	
	private static String PERSISTENCE = "jpa-struts";

	private static EntityManagerFactory entityFactory = Persistence
			.createEntityManagerFactory(PERSISTENCE);


	
	public static PetitDejDao createPetitDejDao() {
		if(PetitDejDao == null){
			PetitDejDao =new PetitDejDaoImp(entityFactory.createEntityManager());
		}
		return PetitDejDao;
	}
	public static TeamDao createTeamDao() {
		if(teamDao == null){
			teamDao =new TeamDaoImpl(entityFactory.createEntityManager());
		}
		return teamDao;
	}
	
	public static NoteDao createNoteDao() {
		if(noteDao == null){
			noteDao =new NoteDaoImpl(entityFactory.createEntityManager());
		}
		return noteDao;
	}

	public static MemberDao createMemberDao() {
		if(memberDao == null){
			memberDao =new MemberDaoImpl(entityFactory.createEntityManager());
		}
		return memberDao;
	}
	
}
