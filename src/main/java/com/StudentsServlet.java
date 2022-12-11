package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentsServlet
 */
public class StudentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();	
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:10000/school_copy","root","toor");
			Statement stmt = connect.createStatement();
			ResultSet rs = stmt.executeQuery("select * from ListStudents");
			out.println("<body style=\"background-image: url('css/back.jpg');\">");
			while(rs.next()) {
				
				
				out.println("<div style=\"width: 50%; height:100px;border-style:solid;border-width:2px;border-color:blue><center>");
				out.println("<table style=\"width: 50%; height:100px;border-style:solid;border-width:2px;border-color:blue><center>");
				out.println("<br><center>"+"ID: "+rs.getInt("Id")+"<br><center>"+"Name: "+rs.getString("name")+"<br><center>"+"Class: "+rs.getString("class")+"<br>");
				out.println("<center>"+"-------------------------------");
				out.println("</table>");
				out.println("</div>");
				
			}
			out.println("<div style=\"width: 50%; height:100px;border-style:solid;border-width:2px;border-color:blue><table style=\\\"width: 50%; height:100px;border-style:solid;border-width:2px;border-color:blue><br><center>"+"<a href='Admin.html'>Back to Dashboard</a></table></div>");
			
			out.println("</body>");
		
	
		} catch (Exception e) {
			System.out.println(e);
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
