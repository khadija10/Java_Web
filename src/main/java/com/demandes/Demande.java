package com.demandes;

public class Demande {
	private int id, id_user;
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	private String nom, prenom, datenaissance, lieunaissance, profession, taille, sexe, typedocument, numerodocument, datedelivrance, adresse, email, telephone, datedemande, piece, photo, recu;
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
	public String getDatenaissance() {
		return datenaissance;
	}
	public void setDatenaissance(String datenaissance) {
		this.datenaissance = datenaissance;
	}
	public String getLieunaissance() {
		return lieunaissance;
	}
	public void setLieunaissance(String lieunaissance) {
		this.lieunaissance = lieunaissance;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getTaille() {
		return taille;
	}
	public void setTaille(String taille) {
		this.taille = taille;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public String getTypedocument() {
		return typedocument;
	}
	public void setTypedocument(String typedocument) {
		this.typedocument = typedocument;
	}
	public String getNumerodocument() {
		return numerodocument;
	}
	public void setNumerodocument(String numerodocument) {
		this.numerodocument = numerodocument;
	}
	public String getDatedelivrance() {
		return datedelivrance;
	}
	public void setDatedelivrance(String datedelivrance) {
		this.datedelivrance = datedelivrance;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getDatedemande() {
		return datedemande;
	}
	public void setDatedemande(String datedemande) {
		this.datedemande = datedemande;
	}
	public String getPiece() {
		return piece;
	}
	public void setPiece(String piece) {
		this.piece = piece;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getRecu() {
		return recu;
	}
	public void setRecu(String recu) {
		this.recu = recu;
	}

	public Demande(int id_user, String nom, String prenom, String datenaissance, String lieunaissance,
			String profession, String taille, String sexe, String typedocument, String numerodocument,
			String datedelivrance, String adresse, String email, String telephone, String datedemande, String piece,
			String photo, String recu) {
		this.id_user = id_user;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.lieunaissance = lieunaissance;
		this.profession = profession;
		this.taille = taille;
		this.sexe = sexe;
		this.typedocument = typedocument;
		this.numerodocument = numerodocument;
		this.datedelivrance = datedelivrance;
		this.adresse = adresse;
		this.email = email;
		this.telephone = telephone;
		this.datedemande = datedemande;
		this.piece = piece;
		this.photo = photo;
		this.recu = recu;
	}
	public Demande() {
	}


}
