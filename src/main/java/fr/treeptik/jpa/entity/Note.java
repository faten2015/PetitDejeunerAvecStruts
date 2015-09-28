package fr.treeptik.jpa.entity;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name = "note")
public class Note implements Serializable{
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	
	@OneToOne
	private PetitDej petitdej;
	
	@OneToOne 
	private Member member;
	
	private Double note;
	
	private String commentaires;
	
	private Boolean prescence;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public PetitDej getPetitdej() {
		return petitdej;
	}

	public void setPetitdej(PetitDej petitdej) {
		this.petitdej = petitdej;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Double getNote() {
		return note;
	}

	public void setNote(Double note) {
		this.note = note;
	}

	public String getCommentaires() {
		return commentaires;
	}

	public void setCommentaires(String commentaires) {
		this.commentaires = commentaires;
	}

	public Boolean getPrescence() {
		return prescence;
	}

	public void setPrescence(Boolean prescence) {
		this.prescence = prescence;
	}
	

	
	
}
