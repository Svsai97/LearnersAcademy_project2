package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AssignServlet
 */
public class AssignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String selectedClass = request.getParameter("r1");
		Cookie ck = new Cookie("Class",selectedClass);
		response.addCookie(ck);
	
		if(selectedClass.equals("8") || selectedClass.equals("9")) {
		out.println("<body style=\"background-image: url('css/back.jpg');\"><br><br><br><center><h4>Select subject to assign:</h4><form action='AssignTo'>");
		out.println("<input type='radio' name='sub' value='Hindi'>Hindi<br>");
		out.println("<input type='radio' name='sub' value='English'>English<br>");
		out.println("<input type='radio' name='sub' value='Maths'>Maths<br>");
		out.println("<input type='radio' name='sub' value='Science'>Science<br>");
		out.println("<input type='radio' name='sub' value='SST'>SST<br>");
		out.println("<input type='submit' value='ASSIGN TEACHER'>");
		out.println("</form></body>");
		
		}
		if(selectedClass.equals("10")) {
			out.println("<body style=\"background-image: url('css/back.jpg');\"><br><br><br><center><h4>Select subject to assign:</h4><form action='AssignTo10'>");
			out.println("<input type='radio' name='sub' value='Hindi'>Hindi<br>");
			out.println("<input type='radio' name='sub' value='English'>English<br>");
			out.println("<input type='radio' name='sub' value='Maths'>Maths<br>");
			out.println("<input type='radio' name='sub' value='Science'>Science<br>");
			out.println("<input type='radio' name='sub' value='SST'>SST<br>");
			out.println("<input type='radio' name='sub' value='Computer Basics'>Computer Basics<br>");
			out.println("<input type='submit' value='ASSIGN TEACHER'>");
			out.println("</form></body>");
		}
		
			}
			
			
			
			

			
			
	
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
