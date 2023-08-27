package com.roseville.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PSA")
public class PSAServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------------Inside Professional Service Agreement(PSA) and Professional Design Service Agreement(PDSA) Service-------------------------------");
		
		String companyName = request.getParameter("companyName");
		String contactFirstName = request.getParameter("contactFirstName");
		String contactLastName = request.getParameter("contactLastName");
		String psaTitle = request.getParameter("psaTitle");
		String streetAddress = request.getParameter("streetAddress");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		
		
		System.out.println("companyName : " + companyName);
		System.out.println("contactFirstName : " + contactFirstName);
		System.out.println("contactLastName : " + contactLastName);
		System.out.println("psaTitle : " + psaTitle);
		System.out.println("streetAddress : " + streetAddress);
		System.out.println("city : " + city);
		System.out.println("state :" + state);
		System.out.println("zip : " + zip);
		
		
		String file_upload = request.getParameter("file_upload");
		System.out.println("File Upload Detail:" +file_upload);

        response.sendRedirect("Test.jsp");
	}
}
