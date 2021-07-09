package com.Dao;

import java.sql.SQLException;
import java.util.List;

import com.bean.ClientBean;


public interface CrudClient {
	public void ajouter(ClientBean cl)throws SQLException;
	public List<ClientBean> getClients()throws SQLException;
	public void supprimer(String cin)throws SQLException;
	public boolean connexion(String email,String password)throws SQLException;
	public int getID (String email)throws SQLException;
	public String getName (String email)throws SQLException;
	public ClientBean getcltbyid(String name) throws SQLException ;

}
