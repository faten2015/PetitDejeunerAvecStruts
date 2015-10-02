package fr.treeptik.jpa.entity;
import java.io.Serializable;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;


@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "statut")
@DiscriminatorValue("Member")
public class Member implements Serializable {



	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Integer id;


	private String firstName;
	private String lastName;

	@ManyToOne(fetch = FetchType.LAZY)
	private Team team;


	@ManyToOne
	private PetitDej petitdej;

	private TypeDej preference;

	private String login;

	private String password;
	

	public Member(String string) {
		firstName=string;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public PetitDej getPetitdej() {
		return petitdej;
	}
	
	public void setPetitdej(PetitDej petitdej) {
		this.petitdej = petitdej;
	}
	
	public TypeDej getPreference() {
		return preference;
	}
	public void setPreference(TypeDej preference) {
		this.preference = preference;
	}
	public String getLogin() {
		return login;
	}
	
	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Member [firstName=" + firstName + "]";
	}










}
