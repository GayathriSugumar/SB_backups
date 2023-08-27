package com.roseville.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ordinance")
public class OrdinanceServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("--------------------Inside Ordinance Service-------------------------------");
        String unlimitedTextarea = request.getParameter("ordinanceunlimitedTextarea");
        System.out.println("unlimitedTextarea : " + unlimitedTextarea);

        String[] fileUploadNames = request.getParameterValues("ordinancefile_upload_names");
        if (fileUploadNames != null) {
            for (String fileName : fileUploadNames) {
                System.out.println("File Upload Detail: " + fileName);
            }
        }
        
        response.sendRedirect("OrdinanceTest.jsp");
    }
}
