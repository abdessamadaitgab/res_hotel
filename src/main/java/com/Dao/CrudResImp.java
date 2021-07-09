package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.ClientBean;
import com.bean.Reservation;

public class CrudResImp {
	static Connection con = null;
    static PreparedStatement ps = null;
    static PreparedStatement ps2 = null;

    static ResultSet rs = null;
    static ResultSet rs2 = null;

	public void ajouter(Reservation res)throws SQLException{
		
		
		String query = "INSERT INTO reservation (cid, datearrivee,datedepart,montant) VALUES (?,?,?,?)";
		con =Factory.dbConnect();
        ps = con.prepareStatement(query);
        ps.setInt(1, res.getIdcli());
        ps.setDate(2, res.getDateArrivee());
        ps.setDate(3, res.getDateDepart());
        ps.setDouble(4, res.getMontant());


        ps.executeUpdate();
        
        con.close();	
		
}
	public List<Reservation> getReservations(int cid)throws SQLException{
		ArrayList<Reservation> res = new ArrayList<Reservation>();	
		
		String query1 = "select * from reservation where cid=?";
		con =Factory.dbConnect();
	    ps = con.prepareStatement(query1);
	    ps.setInt(1, cid);
	    rs = ps.executeQuery();
	    while(rs.next()){
	    	res.add(new Reservation(rs.getInt("id"),cid, rs.getDate("datearrivee"), rs.getDate("datedepart"),rs.getDouble("montant")));}
	    
	    con.close();
	    return res;
	}
	public int getID (int cid)throws SQLException{
		int id;
		String query3 = "Select max(id) FROM reservation WHERE cid=?";
		con =Factory.dbConnect();
	    ps = con.prepareStatement(query3);
	    ps.setInt(1, cid);
	    
	    rs=ps.executeQuery();
	    if(rs.next()) {
	    	id=rs.getInt("max(id)");
	    	return id;
	    }

	return -1;
		
	}
	public void supprimer(int cid)throws SQLException{
	    int ids=getID(cid);

		String query2 = "DELETE FROM reservation WHERE id=?";
		con =Factory.dbConnect();
	    ps2 = con.prepareStatement(query2);
	    System.out.print("la reser a supp"+ids);
	    
	    ps2.setInt(1, ids);
	    ps2.executeUpdate();
	    
	    con.close();
		
		
		
	}
	public void supprimerbyid(int id)throws SQLException{

		String query2 = "DELETE FROM reservation WHERE id=?";
		con =Factory.dbConnect();
	    ps2 = con.prepareStatement(query2);
	    ps2.setInt(1, id);

	    ps2.executeUpdate();
	    
	    con.close();
		
		
		
	}




}
