package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/File")
public class file extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String companyName = request.getParameter("companyName");
		String contactFirstName = request.getParameter("contactFirstName");
		String contactLastName = request.getParameter("contactLastName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String Title = request.getParameter("Title");
		String streetAddress = request.getParameter("streetAddress");
		String City = request.getParameter("City");
		String State = request.getParameter("State");
		String zip = request.getParameter("zip");
		
		System.out.println("_____________________________________________________" );
		System.out.println("Contracting Party Information" );
		System.out.println("");
		System.out.println("Company Name: " +companyName );
		System.out.println("Contact First Name: " +contactFirstName);
		System.out.println("Contact Last Name : " +contactLastName);
		System.out.println("Phone : " +phone );
		System.out.println("email:" +email);
		System.out.println("Title : " +Title );
		System.out.println("Street Address:" +streetAddress);
		System.out.println("City : " +City);
		System.out.println("State : " +State);
		System.out.println("zip : " +zip);
		
		System.out.println("_______________________________________________________" );
		
		String FileName = request.getParameter("FileName");
		System.out.println("File Upload Detail:" +FileName);
		response.sendRedirect("Test.jsp");

		
	}
	
	
	

}
