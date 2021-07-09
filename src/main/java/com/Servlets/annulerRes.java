package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.Dao.CrudResImp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class annulerRes extends HttpServlet {
	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
			CrudResImp cr=new CrudResImp();


		if(request.getParameter("Saisir").equals("Saisir")) {
			int id=Integer.parseInt(   request.getParameter("id"));
			
			try {
				cr.supprimerbyid(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  out.println("<script type=\"text/javascript\">");
			   out.println("alert('suppression réussie ');");

	 		   out.println("location='mnespace.jsp';");
	 		   out.println("</script>");
			
}
	
	
	
	}

}
