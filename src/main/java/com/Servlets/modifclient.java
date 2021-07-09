package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.Dao.CrudClientImp;
import com.Dao.CrudResImp;
import com.bean.ClientBean;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class modifclient extends HttpServlet {
	ClientBean b=new ClientBean();

	CrudClientImp cr=new CrudClientImp();
	private static final long serialVersionUID = 1L;
	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

	 String name = request.getParameter( "nom" );
    String cin2 = request.getParameter( "cin" );
    String telephone = request.getParameter( "tel" );
   
    
    String email = request.getParameter( "mail" );
    String password = request.getParameter("password");
    
    System.out.print(telephone+cin2+name+email+password+"/n");
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
    if(request.getParameter("customerOrder").equals("Modifier")) {
    

   	try {
			cr.modifierClient(email, name, cin2, password, telephone);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    out.println("<script type=\"text/javascript\">");
	   out.println("alert('modification réussie ');");
	   out.println("location='mnespace.jsp';");
	   out.println("</script>");
 
    }
}
}