package fr.treeptik.jpa.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name = "petitdej")
public class PetitDej implements Serializable{
	
private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy="petitdej")
	List<Member>members;
	
	@Enumerated(EnumType.STRING)
	private TypeDej typedej;
	
	private Double prix;
	
	private String date;
	
	private String description;
	
	

	private String frequence;
	
	
	@OneToOne
	private Team team;
	
	private boolean annulable;

	public PetitDej(String string) {
		description=string;
		
	}

	public PetitDej() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<Member> getMembers() {
		return members;
	}

	public void setMembers(List<Member> members) {
		this.members = members;
	}

	public TypeDej getTypedej() {
		return typedej;
	}

	public void setTypedej(TypeDej typedej) {
		this.typedej = typedej;
	}

	public Double getPrix() {
		return prix;
	}

	public void setPrix(Double prix) {
		this.prix = prix;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFrequence() {
		return frequence;
	}

	public void setFrequence(String frequence) {
		this.frequence = frequence;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public boolean isAnnulable() {
		return annulable;
	}

	public void setAnnulable(boolean annulable) {
		this.annulable = annulable;
	}
	
	@Override
	public String toString() {
		return "PetitDej [id=" + id + "]";
	}
	
	

}
