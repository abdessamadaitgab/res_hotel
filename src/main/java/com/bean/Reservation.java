package com.bean;

import java.sql.Date;

public class Reservation {
	int idres,idcli;
	Date dateArrivee,dateDepart;
	double montant;
	public Reservation(int idres, int idcli, Date dateArrivee, Date dateDepart,double montant) {
		super();
		this.idres = idres;
		this.idcli = idcli;
		this.dateArrivee = dateArrivee;
		this.dateDepart = dateDepart;
		this.montant=montant;
	}
	public Reservation(int idcli, Date dateArrivee, Date dateDepart,double montant) {
		super();
		this.idcli = idcli;
		this.dateArrivee = dateArrivee;
		this.dateDepart = dateDepart;
		this.montant=montant;
	}
	public int getIdres() {
		return idres;
	}
	public void setIdres(int idres) {
		this.idres = idres;
	}
	public int getIdcli() {
		return idcli;
	}
	public void setIdcli(int idcli) {
		this.idcli = idcli;
	}
	public Date getDateArrivee() {
		return dateArrivee;
	}
	public void setDateArrivee(Date dateArrivee) {
		this.dateArrivee = dateArrivee;
	}
	public Date getDateDepart() {
		return dateDepart;
	}
	public void setDateDepart(Date dateDepart) {
		this.dateDepart = dateDepart;
	}
	public double getMontant() {
		return montant;
	}
	public void setMontant(double montant) {
		this.montant = montant;
	}
	@Override
	public String toString() {
		return "Reservation [idres=" + idres + ", idcli=" + idcli + ", dateArrivee=" + dateArrivee + ", dateDepart="
				+ dateDepart + ", montant=" + montant + "]";
	}
	
	

}
