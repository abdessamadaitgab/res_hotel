package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import com.Dao.CrudResImp;
import com.bean.Reservation;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class afficherRese extends HttpServlet {
	CrudResImp cr=new CrudResImp();
	private static final long serialVersionUID = 1L;
	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		ArrayList<Reservation> res = new ArrayList<Reservation>();	
		try {
			int idc=(int) request.getSession().getAttribute("id");
			res=(ArrayList<Reservation>) cr.getReservations(idc);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  response.setContentType("text/html");  
		    PrintWriter out = response.getWriter(); 
		    out.print("<html><center> <table border=1><tr><th> id reservation</th><th>id client</th><th>date arrivee</th><th>date depart</th><th>montant</th></tr>");
	          for(int i=0;i<res.size();i++) {
	        	  out.print("<tr>");
	        	  out.print("<td>");
	        	  out.println(res.get(i).getIdres());
	        	  out.print("</td>");
	        	  out.print("<td>");

	        	  out.println(res.get(i).getIdcli());
	        	  out.print("</td>");
	        	  out.print("<td>");

	        	  out.println(res.get(i).getDateArrivee());
	        	  out.print("</td>");
	        	  out.print("<td>");

	        	  out.println(res.get(i).getDateDepart());
	        	  out.print("</td>");
	        	  out.print("<td>");

	        	  out.println(res.get(i).getMontant());
	        	  out.print("</td>");


	        	  out.print("</tr>");


	        	  
	        	  
	          }
        	  out.print("</table></center>");

	
	
	}	
	
}
