package com.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bean.ClientBean;

public class CrudClientImp {
	static Connection con = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;
	public void ajouter(ClientBean cl) throws SQLException {
		
		
		String query = "INSERT INTO client (name, cin,email,password,phone) VALUES (?,?,?,?,?)";
		con =Factory.dbConnect();
        ps = con.prepareStatement(query);
        ps.setString(1, cl.getName());
        ps.setString(2, cl.getCin());
        ps.setString(3, cl.getEmail());
        ps.setString(4, cl.getPassword());
        ps.setString(5, cl.getPhone());

        ps.executeUpdate();
        
        con.close();
		
		
}

public List<ClientBean> getClients() throws SQLException{
	ArrayList<ClientBean> clients = new ArrayList<ClientBean>();	
	
	String query1 = "select * from client";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query1);
    rs = ps.executeQuery();
    System.out.println("requete : select * from employe reussit \n");
    while(rs.next()){
    	System.out.println("nom :"+rs.getString("nom")+" | prenom :"+rs.getString("prenom")+" | cin :"+rs.getString("cin")); 
    	clients.add(new ClientBean(rs.getString("name"), rs.getString("cin"), rs.getString("email"),rs.getString("phone")));}
    
    con.close();
    return clients;
}
public void supprimer(String cin) throws SQLException{
	
	String query2 = "DELETE FROM client WHERE cin=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query2);
    ps.setString(1, cin);
    ps.executeUpdate();
    
    con.close();
    
}
public boolean connexion(String email ,String password) throws SQLException {
	String query3 = "Select * FROM client WHERE email=? AND password=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    ps.setString(2, password);
    rs=ps.executeQuery();
    if(rs.next()) {
    	return true;
    }

return false;


	
}
public int getID (String email)throws SQLException{
	int id;
	String query3 = "Select (id) FROM client WHERE email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    
    rs=ps.executeQuery();
    if(rs.next()) {
    	id=rs.getInt("id");
    	return id;
    }

return -1;
	
}
public String getName(String email)throws SQLException{
	String name;
	String query3 = "Select (name) FROM client WHERE email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    
    rs=ps.executeQuery();
    if(rs.next()) {
    	name=rs.getString("name");
    	return name;
    }

return null;
	
}
public String getcin(String email)throws SQLException{
	String name;
	String query3 = "Select (cin) FROM client WHERE email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    
    rs=ps.executeQuery();
    if(rs.next()) {
    	name=rs.getString("cin");
    	return name;
    }

return null;
	
}
public String gettel(String email)throws SQLException{
	String name;
	String query3 = "Select (phone) FROM client WHERE email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    
    rs=ps.executeQuery();
    if(rs.next()) {
    	name=rs.getString("phone");
    	return name;
    }

return null;
	
}
public String getpw(String email)throws SQLException{
	String name;
	String query3 = "Select (password) FROM client WHERE email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query3);
    ps.setString(1, email);
    
    rs=ps.executeQuery();
    if(rs.next()) {
    	name=rs.getString("password");
    	return name;
    }

return null;
	
}
public ClientBean getcltbyid(String name) throws SQLException {
	String query4 = "Select * FROM client WHERE name=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query4);
    ps.setString(1, name);
    rs=ps.executeQuery();

    if(rs.next()) {
    ClientBean cl=new ClientBean(rs.getString("name"), rs.getString("cin"), rs.getString("email"),rs.getString("phone"));
    System.out.print(cl+"testjdbc");
    return cl;
    }
    

    return null;
}
public void modifierClient(String email,String name,String cin,String password,String tel) throws SQLException {

	String query = "Update  client set name=? ,cin=? ,password=? , phone=? where email=?";
	con =Factory.dbConnect();
    ps = con.prepareStatement(query);
    ps.setString(1, name);
    ps.setString(2, cin);
    ps.setString(3, password);
    ps.setString(4, tel);
    ps.setString(5, email);
     System.out.print(name+""+cin+password+email);
    ps.executeUpdate();
    
    con.close();
}


}
