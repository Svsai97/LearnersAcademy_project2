package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.PreparedStatement;

/**
 * Servlet implementation class AssignTo
 */
public class AssignTo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignTo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();	
		
		Cookie[] name = request.getCookies();
		int ck = Integer.parseInt(name[0].getValue());
		 String teacher = null;
		
		String subj = request.getParameter("sub");
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:10000/school_copy","root","toor");
			Statement stmt = connect.createStatement();
			
			ResultSet rs = stmt.executeQuery("select name from listteachers where subject="+"'"+subj+"'");
			while(rs.next()) {
				 teacher = rs.getString("name");
			}
			Statement stmt1 = connect.createStatement();
			ResultSet rs1 = stmt1.executeQuery("select name,ID from liststudents where class="+"'"+name[0].getValue()+"'");
			
			List<String> stud = new ArrayList<String>();
			List<Integer> studId = new ArrayList<Integer>();
			
			while(rs1.next()) {
				stud.add(rs1.getString("name"));
				studId.add(rs1.getInt("Id"));
			}
			rs1.close();
			
			for(int i = 0;i < 3;i++) {
			PreparedStatement stmt2 = connect.prepareStatement("insert into classreport values(?,?,?,?,?)");
			
			
			stmt2.setInt(1, studId.get(i));
			stmt2.setString(2, stud.get(i));
			stmt2.setString(3,subj);
			stmt2.setInt(4, ck);
			stmt2.setString(5,teacher);
			
			stmt2.execute();
			stmt2.close();
			}	
			
					
			out.println("<body bgcolor='brown'><h4>Teacher Assigned</h4><a href='Admin.html'>Go Back to Main</body>");
		}
	
		 catch (Exception e) {
			System.out.println(e);
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
