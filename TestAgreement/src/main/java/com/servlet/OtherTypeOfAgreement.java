package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/agreement")
public class OtherTypeOfAgreement extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String unlimitedTextarea = request.getParameter("unlimitedTextarea");
		System.out.println("Feed back is: " + unlimitedTextarea);
		System.out.println("________________________________________________________" );
		String organizationName = request.getParameter("organizationName");
		String contactFirstName = request.getParameter("contactFirstName");
		String contactLastName = request.getParameter("contactLastName");
		String Title = request.getParameter("Title");
		String streetAddress = request.getParameter("streetAddress");
		String City = request.getParameter("City");
		String State = request.getParameter("State");
		String zip = request.getParameter("zip");
		
	
		System.out.println("Contracting Party Information" );
		
		System.out.println("Organization Name: " +organizationName );
		System.out.println("Contact First Name: " +contactFirstName);
		System.out.println("Contact Last Name : " +contactLastName);
		System.out.println("Title : " +Title );
		System.out.println("Street Address:" +streetAddress);
		System.out.println("City : " +City);
		System.out.println("State : " +State);
		System.out.println("zip : " +zip);
		System.out.println("_________________________________________________________" );
		response.sendRedirect("File.jsp");
	}

}
