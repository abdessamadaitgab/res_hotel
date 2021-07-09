package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Dao.CrudClientImp;
import com.bean.ClientBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSessionContext;

public class InscriClient extends HttpServlet {
    	CrudClientImp ci=new CrudClientImp();
    	int id;String namever,cinver,loginver,passwordver,telver;

	 
	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {


	ArrayList<ClientBean> clients;
	try {
	clients = (ArrayList<ClientBean>) ci.getClients();
		
	HttpSessionContext session =(HttpSessionContext) request.getSession();
    ((ServletRequest) session).setAttribute("clients", clients);
    } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	request.getServletContext().getRequestDispatcher("/reponse.jsp").forward(request, response);}
// TODO Auto-generated method stub


	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

	 String name = request.getParameter( "Name" );
     String cin = request.getParameter( "Cin" );
     String telephone = request.getParameter( "Phone" );
    
     
     String email = request.getParameter( "Email" );
     String password = request.getParameter( "PASSWORD" );

     
     response.setContentType("text/html");  
     PrintWriter out = response.getWriter();  
    /* if(request.getParameter("customerOrder").equals("SUBMIT")) {
 		try {
 			ClientBean cl = new ClientBean(name,cin,email,password,telephone);
            ci.ajouter(cl);
 			doGet(request,response);
 		} catch (SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 		String val ="le client est ajouté avec succés";
		
		HttpSessionContext session =(HttpSessionContext) request.getSession();
	    ((ServletRequest) session).setAttribute("value", val);
     
		request.getServletContext().getRequestDispatcher("/reponse.jsp").forward(request, response);
	 

}*/
     if(request.getParameter("customerconnexion").equals("CONNEXION")) {
    	 boolean m = false;
    	 try {
			 m=ci.connexion(email, password);
			 System.out.print(email);
			 System.out.print(password);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
		if(m) {
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('Connexion etable');");
			   out.println("location='reservation.jsp';");

			   out.println("</script>");
                
			try {
				id=ci.getID(email);
				namever=ci.getName(email);
				telver=ci.gettel(email);
				passwordver=ci.getpw(email);
				cinver=ci.getcin(email);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  
			
			request.getSession().setAttribute("id", id);   
			request.getSession().setAttribute("name", namever);
			request.getSession().setAttribute("login", email);
			request.getSession().setAttribute("cin", cinver);
			request.getSession().setAttribute("password", passwordver);
			request.getSession().setAttribute("tel", telver);




 		    System.out.print(id+""+telver+""+passwordver);
	//		request.getServletContext().getRequestDispatcher("/reservation.jsp").forward(request, response);

    	 }
		else {
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('User or password incorrect');");
			   out.println("location='connexionClient.jsp';");
			   out.println("</script>");
		}
     }

     
	}}
