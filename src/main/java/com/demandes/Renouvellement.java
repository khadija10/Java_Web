package com.demandes;

public class Renouvellement {
	private int id, id_demande;
	
	private String carte, recu, photo, nouvelleAdresse, nouvelEmail, nouvoTelephone, date;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_demande() {
		return id_demande;
	}

	public void setId_demande(int id_demande) {
		this.id_demande = id_demande;
	}


	public String getCarte() {
		return carte;
	}

	public void setCarte(String carte) {
		this.carte = carte;
	}

	public String getRecu() {
		return recu;
	}

	public void setRecu(String recu) {
		this.recu = recu;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getNouvelleAdresse() {
		return nouvelleAdresse;
	}

	public void setNouvelleAdresse(String nouvelleAdresse) {
		this.nouvelleAdresse = nouvelleAdresse;
	}

	public String getNouvelEmail() {
		return nouvelEmail;
	}

	public void setNouvelEmail(String nouvelEmail) {
		this.nouvelEmail = nouvelEmail;
	}

	public String getNouvoTelephone() {
		return nouvoTelephone;
	}

	public void setNouvoTelephone(String nouvoTelephone) {
		this.nouvoTelephone = nouvoTelephone;
	}

	public Renouvellement() {
	}

	public Renouvellement(int id_demande, String carte, String recu, String photo, String nouvelleAdresse,
			String nouvelEmail, String nouvoTelephone, String date) {
		this.id_demande = id_demande;
		this.carte = carte;
		this.recu = recu;
		this.photo = photo;
		this.nouvelleAdresse = nouvelleAdresse;
		this.nouvelEmail = nouvelEmail;
		this.nouvoTelephone = nouvoTelephone;
		this.date = date;
	}
	
	
	

}
