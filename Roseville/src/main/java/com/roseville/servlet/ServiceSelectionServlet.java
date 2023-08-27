package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Service")
public class ServiceSelectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("---------------------Inside Service Selection------------------------------------------");
		String agreement = request.getParameter("agreement");
		String others = request.getParameter("others");
		
		System.out.println("AGREEMENT is: " + agreement);
		System.out.println("Other Type is: " + others);
		

        if (agreement.equals("Professional Servise Agreement(PSA)")) {
            response.sendRedirect("PSA.jsp");
        } else if (agreement.equals("Professional Design Servise Agreement(PDSA)")) {
            response.sendRedirect("PSA.jsp");
        } else if (agreement.equals("Other Type of Agreement")) {
            response.sendRedirect("OtherTypeOfAgreement.jsp");
        } else if (agreement.equals("Amendment to Existing PSA, PDSA, or Other Agreement")) {
            response.sendRedirect("AmendmentToExisitingPSAPDSA.jsp");
        } else if (agreement.equals("Ordinance")) {
            response.sendRedirect("Ordinance.jsp");
        } else if (agreement.equals("Legal Opinion")) {
            response.sendRedirect("LegalOpinion.jsp");
        } else if (agreement.equals("City Attorney Signature and Routing Only")) {
            response.sendRedirect("CityAttorneySignature.jsp");
        } else if (agreement.equals("Review Document and Comment/Advise")) {
            response.sendRedirect("ReviewDocumentAndComment.jsp");
        } else {
            response.sendRedirect("ServiceSelection.jsp");
        }
		 	
	}
	

}
