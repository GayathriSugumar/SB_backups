package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/psa")
public class PsaPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String unlimitedTextarea = request.getParameter("unlimitedTextarea");
		System.out.println("Feed back is: " + unlimitedTextarea);
		System.out.println("________________________________________________________" );
		
		String FileName = request.getParameter("FileName");
		System.out.println("File Upload Detail:" +FileName);
		
		response.sendRedirect("otherTypeAgreement.jsp");
	}

}
