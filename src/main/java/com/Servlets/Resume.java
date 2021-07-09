package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Resume extends HttpServlet {
	

	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();

		if(request.getParameter("resaa").equals("voir le resume de reservation")) {
			
			  out.println("<script type=\"text/javascript\">");
	 		   out.println("location='resume.jsp';");
	 		   out.println("</script>");
			
}
	
	
	
	}
}
