package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServiceSelection")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String title = request.getParameter("title");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String company = request.getParameter("company");
		String approve = request.getParameter("approve");
		String dateResponse = request.getParameter("dateResponse");
		String dateCouncil = request.getParameter("dateCouncil");
		String requestTitle = request.getParameter("requestTitle");
		String comment = request.getParameter("comment");
		
		
		System.out.println("FirstName : " + firstName);
		System.out.println("LastName : " + lastName);
		System.out.println("Title : " + title);
		System.out.println("Email : " + email);
		System.out.println("Phone number : " + phone);
		System.out.println("Company Name : " + company);
		System.out.println("Approval :" + approve);
		System.out.println("DateResponse : " + dateResponse);
		System.out.println("DateCouncil : " + dateCouncil);
		System.out.println("RequestTitle : " + requestTitle);
		System.out.println("Comment: " + comment);
		
		response.sendRedirect("ServiceSelection.jsp");
	}

}
