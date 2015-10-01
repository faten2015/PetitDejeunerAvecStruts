package fr.treeptik.action;


import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import fr.treeptik.jpa.entity.Note;
import fr.treeptik.jpa.dao.NoteDao;
import fr.treeptik.jpa.dao.impl.DaoFactory;


public class NoteAction extends ActionSupport {

	private static final long serialVersionUID = 1L;


	private NoteDao noteDao;
	private List<Note> listNote;
	public Note noteById=new Note();
	boolean editMode = false;
	private Integer id;
    
 
	
	
	public String delete(){
		noteById=noteDao.find(id);
		noteDao.delete(noteById);
		listNote=noteDao.findAll();
		return SUCCESS;
	} 

	
	public String update(){
		editMode=true;
		noteById=noteDao.find(id);
		noteDao.update(noteById);
		listNote=noteDao.findAll();
		return SUCCESS;
	}
	
	
    public Note getNoteById() {
		return noteById;
	}


	public void setNoteById(Note noteById) {
		this.noteById = noteById;
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

	public NoteAction() {
		this.noteDao = DaoFactory.createNoteDao();
	}

	public String findAll() throws Exception {
		listNote = noteDao.findAll();
		return SUCCESS;
	}
	
	public String find() throws Exception {
		noteById = noteDao.find(id);
		return SUCCESS;
	}
	
	
	
	
	public String save(){
		
		if(editMode== false)
			noteDao.persist(noteById);
		else{
			noteDao.update(noteById);
	        editMode=true;
	        noteById=new Note();
	   
		}
		listNote=noteDao.findAll();
		return SUCCESS;
	}
	

	public NoteDao getNoteDao() {
		return noteDao;
	}

	public void setNoteDao(NoteDao noteDao) {
		this.noteDao = noteDao;
	}

	public List<Note> getListNote() {
		return listNote;
	}

	public void setListNote(List<Note> listNote) {
		this.listNote = listNote;
	}

	
}
