package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.Dao.CrudResImp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Paiement extends HttpServlet {
		/**
		 * 
		 */
		CrudResImp cr=new CrudResImp();
		private static final long serialVersionUID = 1L;

		public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
			 PrintWriter out=response.getWriter();

			if(request.getParameter("annuler").equals("Annuler la reservation")) {
				try {
					System.out.print("je suis la");
					int id=(int) request.getSession().getAttribute("id");
					cr.supprimer(id);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			     out = response.getWriter();
			    out.println("<script type=\"text/javascript\">");
		 		   out.println("location='reservation.jsp';");
		 		   out.println("</script>");
		    }
			
}}