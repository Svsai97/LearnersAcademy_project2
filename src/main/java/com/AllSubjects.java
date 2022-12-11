package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AllSubjects
 */
public class AllSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllSubjects() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		out.println("<body style=\"background-image: url('css/back.jpg');\"><center><h4><br><br><br><br><br>Select any class from below to view Subjects: </h4><form action='Class8Subj'> <input type='submit' value='Class 8 subjects'></form>"+"  "+"<form action='Class9Subj'> <input type='submit' value='Class 9 subjects'></form>"+"<form action='Class10Subj'> <input type='submit' value='Class 10 subjects'></form>");
		
		out.println("</body>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
