package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Others")
public class OtherTypeOfAgreementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------------Inside OtherTypeOfAgreement Service-------------------------------");
		
		String unlimitedTextarea = request.getParameter("otherunlimitedTextarea");
		String companyName = request.getParameter("otherorgName");
		String contactFirstName = request.getParameter("otherfirstName");
		String contactLastName = request.getParameter("otherlastName");
		String psaTitle = request.getParameter("otheragreementTitle");
		String streetAddress = request.getParameter("otherstreetAddress");
		String city = request.getParameter("othercity");
		String state = request.getParameter("otherstate");
		String zip = request.getParameter("otherzip");
		
		System.out.println("unlimitedTextarea : " + unlimitedTextarea);
		System.out.println("companyName : " + companyName);
		System.out.println("contactFirstName : " + contactFirstName);
		System.out.println("contactLastName : " + contactLastName);
		System.out.println("psaTitle : " + psaTitle);
		System.out.println("streetAddress : " + streetAddress);
		System.out.println("city : " + city);
		System.out.println("state :" + state);
		System.out.println("zip : " + zip);
		
		
		String file = request.getParameter("otherfile_upload");
		System.out.println("File Upload Detail:" +file);

        response.sendRedirect("OthersOutputPage.jsp");
	}

}
