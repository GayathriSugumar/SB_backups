package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/helloServlet")
public class agreement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("_________________________________________________________" );
		String agreement = request.getParameter("agreement");
		
		if (agreement.equals("Professional Servise Agreement(PSA)")) {
			response.sendRedirect("PSAPage.jsp");
		} else if (agreement.equals("Professional Design Servise Agreement(PDSA)")) {
			response.sendRedirect("localStorage.jsp");
		} else if (agreement.equals("Other Type of Agreement")) {
			response.sendRedirect("otherTypeAgreement.jsp");
		} else {
			// Handle invalid options or default case
			response.sendRedirect("localStorage.jsp");
		}
		
		
		String others = request.getParameter("others");
		System.out.println("AGREEMENT is: " + agreement);
		System.out.println("Other Type is: " + others);
		
		//response.sendRedirect("localStorage.jsp");
	}

}


