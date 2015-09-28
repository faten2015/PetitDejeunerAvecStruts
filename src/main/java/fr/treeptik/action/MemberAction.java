package fr.treeptik.action;


import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.Member;
import fr.treeptik.jpa.dao.MemberDao;
import fr.treeptik.jpa.dao.impl.DaoFactory;


public class MemberAction extends ActionSupport {

	private static final long serialVersionUID = 1L;


	private MemberDao memberDao;
	private List<Member> listMember;
	public Member memberById=new Member();
	
	private Integer id;


	private boolean editMode=false;
    
 
    public Member getMemberById() {
		return memberById;
	}


	public void setMemberById(Member memberById) {
		this.memberById = memberById;
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

	public MemberAction() {
		this.memberDao = DaoFactory.createMemberDao();
	}

	public String save(){
		if(editMode== false)
			memberDao.persist(memberById);
		else{
			memberDao.update(memberById);
	        editMode=false;
	//   petitDejById=new PetitDej();
	   
		}
		listMember=memberDao.findAll();
		return SUCCESS;
	}
	
	
	public String delete(){
		memberById=memberDao.find(id);
		memberDao.delete(memberById);
		listMember=memberDao.findAll();
		return SUCCESS;
	} 

	
	public String update(){
		editMode=true;
		memberById=memberDao.find(id);
		memberDao.update(memberById);
		listMember=memberDao.findAll();
		return SUCCESS;
	}
	
	

	
	public String findAll() throws Exception {
		listMember = memberDao.findAll();
		return SUCCESS;
	}
	
	public String find() throws Exception {
		memberById = memberDao.find(id);
		return SUCCESS;
	}
	

	public MemberDao getMemberDao() {
		return memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public List<Member> getListMember() {
		return listMember;
	}

	public void setListMember(List<Member> listMember) {
		this.listMember = listMember;
	}

	
}
