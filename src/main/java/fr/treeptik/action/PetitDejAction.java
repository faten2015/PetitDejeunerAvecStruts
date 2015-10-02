package fr.treeptik.action;


import java.util.List;

import javax.transaction.Transactional;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.PetitDej;
import fr.treeptik.jpa.entity.Team;
import fr.treeptik.jpa.dao.PetitDejDao;
import fr.treeptik.jpa.dao.impl.DaoFactory;


public class PetitDejAction extends ActionSupport {

	private static final long serialVersionUID = 1L;


	private PetitDejDao petDejDao;
	public List<PetitDej> listPetitDej;
	public PetitDej petitDejById=new PetitDej();
	private Integer id;
	private boolean editMode=false;
	private Team team=new Team();

    
 
    public PetitDej getPetitDejById() {
		return petitDejById;
	}


	public void setPetitDejById(PetitDej petitDejById) {
		this.petitDejById = petitDejById;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String execute() {
        System.out.println("id = " + id);
        return SUCCESS;
    }

	public PetitDejAction() {
		this.petDejDao = DaoFactory.createPetitDejDao();
	}
	public String save(){
		if(editMode== false)
			petDejDao.persist(petitDejById);
		else{
			petDejDao.update(petitDejById);
	        editMode=false;
	        petitDejById=new PetitDej();
		}
		listPetitDej=petDejDao.findAll();
		return SUCCESS;
	}
	

	public String findAll() throws Exception {
		listPetitDej = petDejDao.findAll();
		return SUCCESS;
	}
	
	public String find() throws Exception {
		petitDejById = petDejDao.find(id);
		return SUCCESS;
	}
	
	public String delete(){
		petitDejById=petDejDao.find(id);
		petDejDao.delete(petitDejById);
		listPetitDej=petDejDao.findAll();
	
		return SUCCESS;
	} 

	
	public String update(){
		editMode=true;
		System.out.println(id);
		petitDejById=petDejDao.find(id);
		petDejDao.update(petitDejById);
		listPetitDej=petDejDao.findAll();
		return SUCCESS;
	}
	
	
	public PetitDejDao getPetDejDao() {
		return petDejDao;
	}

	public void setPetDejDao(PetitDejDao petDejDao) {
		this.petDejDao = petDejDao;
	}

	public List<PetitDej> getListPetitDej() {
		return listPetitDej;
	}

	public void setListPetitDej(List<PetitDej> listPetitDej) {
		this.listPetitDej = listPetitDej;
	}


	public Team getTeam() {
		return team;
	}


	public void setTeam(Team team) {
		this.team = team;
	}

	
	
}
