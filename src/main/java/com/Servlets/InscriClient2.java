package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.Dao.CrudClientImp;
import com.bean.ClientBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSessionContext;

public class InscriClient2 extends HttpServlet {
	
	CrudClientImp ci=new CrudClientImp();

	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		 String name = request.getParameter( "Name" );
	     String cin = request.getParameter( "Cin" );
	     String telephone = request.getParameter( "Phone" );
	     String email = request.getParameter( "Email" );
	     String password = request.getParameter( "PASSWORD" );

	     
	     response.setContentType("text/html");  
	     PrintWriter out = response.getWriter();  
	    if(request.getParameter("customerOrder").equals("SUBMIT")) {
	 		try {
	 			ClientBean cl = new ClientBean(name,cin,email,password,telephone);
	            ci.ajouter(cl);
	 		} catch (SQLException e) {
	 			// TODO Auto-generated catch block
	 			e.printStackTrace();
	 		}
	 	   out.println("<script type=\"text/javascript\">");
		   out.println("alert('Le client est ajouté avec succes');");
		   out.println("location='connexionClient.jsp';");
		   out.println("</script>");
	     
		 

	
}}}
