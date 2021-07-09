package com.Dao;


import java.sql.SQLException;
import java.util.List;

import com.bean.Reservation;


public interface CrudRes {
	public void ajouter(Reservation res)throws SQLException;
	public List<Reservation> getReservations()throws SQLException;
	public void supprimer(int cid)throws SQLException;
	public int getID (int cid)throws SQLException;
}
