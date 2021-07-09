package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

import com.Dao.CrudResImp;
import com.bean.Reservation;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSessionContext;

public class ResClient extends HttpServlet {
	/**
	 * 
	 */
	CrudResImp cr=new CrudResImp();
	private static final long serialVersionUID = 1L;

	public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
	
		if(request.getParameter("customerreservation").equals("RESERVATION")) {
			Date da= Date.valueOf(request.getParameter("da"));
			Date dd= Date.valueOf(request.getParameter("dd"));

		
		int id =(int) request.getSession().getAttribute("id");
	int numbersingle=Integer.parseInt(request.getParameter("numbersingle"));
	
	int numberdouble=Integer.parseInt(request.getParameter("numberdouble"));
	int numbertriple=Integer.parseInt(request.getParameter("numbertriple"));
	int numberquadruple=Integer.parseInt(request.getParameter("numberquadruple"));
	int numberad=Integer.parseInt(request.getParameter("na"));
	int numberen=Integer.parseInt(request.getParameter("ne"));
    PrintWriter out = response.getWriter();
    PrintWriter out2 = response.getWriter();

    
    int a=(numberad+numberen);
    int b=(numbersingle+(2*numberdouble)+(3*numbertriple)+(4*numberquadruple));
    int montant=((numbersingle*1000)+(1500*numberdouble)+(2000*numbertriple)+(2500*numberquadruple));

    System.out.print(montant);
    System.out.println (a +"et"+b);

    

    if(a>b ) {
  	   out.println("<script type=\"text/javascript\">");
 		   out.println("alert('Le nombre de chambres ne correspond pas au nombre de clients ');");
 		   out.println("location='reservation.jsp';");
 		   out.println("</script>");
    }
  
	 /* if(da.compareTo(dd)>0) {
		  System.out.print("erreur");
		   out2.println("<script type=\"text/javascript\">");
 		   out2.println("alert('La date d'arrivée n'est pas valide par rapport à la date de départ');");
 		   out2.println("location='reservation.jsp';");
 		   out2.println("</script>");
		  
	  }
	  */
	  else {
	

        request.getSession().setAttribute("montant", montant);
	
	
	 
	 

     
     response.setContentType("text/html");  
 
	 
		 
		 Reservation res=new Reservation(id,da,dd,montant);
		 try {
			cr.ajouter(res);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 out.println("<script type=\"text/javascript\">");
		   out.println("alert(' vous allez redirigé vers le payement');");
 		   out.println("location='payer.jsp';");

		   out.println("</script>");
		 
	 }

	
	
	}
    }
	
	
	
	
	
}
