package tn.essat.model;

public class Etudiant {
	private int id;
	private String prenom;
	private String nom;
	private String groupe;
	public Etudiant() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Etudiant(int id, String prenom, String nom, String groupe) {
		super();
		this.id = id;
		this.prenom = prenom;
		this.nom = nom;
		this.groupe = groupe;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getGroupe() {
		return groupe;
	}
	public void setGroupe(String groupe) {
		this.groupe = groupe;
	}

		

}
