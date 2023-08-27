package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/city")
public class CityAttorneyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------------Inside  City Attorney Signature and Routing Only Service-------------------------------");
		String unlimitedTextarea = request.getParameter("unlimitedTextarea");
		System.out.println("unlimitedTextarea : " + unlimitedTextarea);

		String file_upload = request.getParameter("file_upload");
		System.out.println("File Upload Detail:" +file_upload);
		
		response.sendRedirect("CityAttorneyTest.jsp");
	}

}
