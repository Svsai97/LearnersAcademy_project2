<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
     <%@page import="java.sql.DriverManager" %>
     <%@page import="java.sql.PreparedStatement" %>
      <%@page import="java.sql.SQLException" %>

<%
Connection con;
PreparedStatement pstm;
ResultSet rsuser;
int StudentId;
String StudenName,Subject,TeacherAssign;



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image: url('css/back.jpg');">

<H1>CLASS REPORT</H1>
<form action= "ClassAssigned.jsp" method="post">

<div style="width: 50%; height:1000px;border-style:solid;border-width:2px;border-color:brown">

<table style="width: 10%; height:100px;border-style:solid;border-width:1px;border-color:blue">
<thead>

<th style="width: 10%; height:20px;border-style:solid;border-width:1px;border-color:blue">StudentId</th>
<th style="width: 20%; height:20px;border-style:solid;border-width:1px;border-color:blue">StudenName</th>
<th style="width: 20%; height:20px;border-style:solid;border-width:1px;border-color:blue">Subject</th>
<th style="width: 40%; height:20px;border-style:solid;border-width:1px;border-color:blue">TeacherAssign</th>


</thead>
<tbody>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:10000/school_copy", "root", "toor");
	pstm = con.prepareStatement("select * from classreport");
	rsuser= pstm.executeQuery();
	while(rsuser.next())
	{
		StudentId=rsuser.getInt(1);
		StudenName=rsuser.getString(2);
		Subject=rsuser.getString(3);
		TeacherAssign=rsuser.getString(5);
		%>
		<tr>
		<th style="width: 10%; height:20px;border-style:solid;border-width:1px;border-color:blue"><%=StudentId%></th>
        <th style="width: 20%; height:20px;border-style:solid;border-width:1px;border-color:blue"><%=StudenName%></th>
        <th style="width: 20%; height:20px;border-style:solid;border-width:1px;border-color:blue"><%=Subject%></th>
        <th style="width: 40%; height:20px;border-style:solid;border-width:1px;border-color:blue"><%=TeacherAssign%></th>
		
	
		
		
		</tr>
	<%}
}
catch(Exception  ex){
	%>
	<script>
	alert("Problem in Retriving data:-"+<% ex.toString(); %>);
	</script> 
	
	
	<%   		
}


%>
</tbody>

</table>

</center>
</table>

</div>
</body>
</html>