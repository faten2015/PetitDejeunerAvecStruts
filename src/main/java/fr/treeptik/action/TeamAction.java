package fr.treeptik.action;


import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.Team;
import fr.treeptik.jpa.dao.TeamDao;
import fr.treeptik.jpa.dao.impl.DaoFactory;


public class TeamAction extends ActionSupport {

	private static final long serialVersionUID = 1L;


	private TeamDao teamDao;
	private List<Team> listTeam;
	public Team teamById=new Team();
	
	private Integer id;


	private boolean editMode=false;
    
	public String save(){
		if(editMode== false)
			teamDao.persist(teamById);
		else{
			teamDao.update(teamById);
	   editMode=false;
	//   petitDejById=new PetitDej();
	   
		}
		listTeam=teamDao.findAll();
		return SUCCESS;
	}

	
	public String delete(){
		teamById=teamDao.find(id);
		teamDao.delete(teamById);
		listTeam=teamDao.findAll();
		return SUCCESS;
	} 

	
	public String update(){
		editMode=true;
		teamById=teamDao.find(id);
		teamDao.update(teamById);
		listTeam=teamDao.findAll();
		return SUCCESS;
	}
	
 
    public Team getTeamById() {
		return teamById;
	}


	public void setTeamById(Team teamById) {
		this.teamById = teamById;
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

	public TeamAction() {
		this.teamDao = DaoFactory.createTeamDao();
	}

	public String findAll() throws Exception {
		listTeam = teamDao.findAll();
		return SUCCESS;
	}
	
	public String find() throws Exception {
		teamById = teamDao.find(id);
		return SUCCESS;
	}
	

	public TeamDao getTeamDao() {
		return teamDao;
	}

	public void setTeamDao(TeamDao teamDao) {
		this.teamDao = teamDao;
	}

	public List<Team> getListTeam() {
		return listTeam;
	}

	public void setListTeam(List<Team> listTeam) {
		this.listTeam = listTeam;
	}

	
}
