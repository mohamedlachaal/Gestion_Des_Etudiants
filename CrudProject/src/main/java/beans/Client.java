package beans;

import java.util.ArrayList;
import java.util.List;

public class Client {
	private int id;
	private String nom;
	private String prenom;
	private String email;
	private String phone;
	private Paiment paiment;
	
	private List<Paiment> paiments ;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public List<Paiment> getPaiments() {
		return paiments;
	}
	public void setPaiments(List<Paiment> paiments) {
		this.paiments = paiments;
	}
	public Paiment getPaiment() {
		return paiment;
	}
	public void setPaiment(Paiment paiment) {
		this.paiment = paiment;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
