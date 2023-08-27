package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AmendmentToExisitingPSAPDSA")
public class AmendmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--------------------Inside  Amendment to Existing PSA, PDSA, or Other Agreement Sevice-------------------------------");
		
		String myfile = request.getParameter("amendmentFile");
		System.out.println("myfile : " + myfile);

		String file_upload = request.getParameter("amendmentFile_upload");
		System.out.println("File Upload Detail:" +file_upload);

        response.sendRedirect("AmendmentTest.jsp");
		
	}

}
