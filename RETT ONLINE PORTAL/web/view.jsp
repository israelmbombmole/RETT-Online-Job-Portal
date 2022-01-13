<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.util.logging.Level" %>
<%@page import="java.util.logging.Logger" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Application</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    
<div class="form-group">
                <div  class="col-sm-4"></div>
                <div  class="col-sm-4">
                    <h2 style="text-align: center">Job Application</h2>
                    
                    
                </div>
            </div>
            <div class="col-sm-2">
                        <a href="index.jsp"><Button class="btn btn-success" style="width: 80px;">Home</Button></a>
                    </div>
    </br>
	<table class="table table-hover">
  <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Job title</th>
        <th scope="col">Company</th>
        <th scope="col">Position</th>
        <th scope="col">Date</th>
        <th scope="col">Set Time</th>
        <th scope="col">Due Time</th>
        <th scope="col">Salary</th>
        <th scope="col">Apply</th>
 
    </tr>
  </thead>
  <tbody>
  <% 
  	    Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root","cput");
 
  	String query = "Select * from addjob";
	 pst = con.prepareStatement(query);
	 rs = pst.executeQuery();
	
	while(rs.next()){
		%>
		<tr>
		<th scope="row"><%= rs.getString("id") %></th>
                <td><%=rs.getString("jobtitle")%></td>
                <td><%=rs.getString("company")%></td>
                <td><%=rs.getString("position")%></td>
                <td><%=rs.getString("date")%></td>
                <td><%=rs.getString("settime")%></td>
                <td><%=rs.getString("duetime")%></td>
                <td><%=rs.getString("salary")%></td>
		
		<td><a class="btn btn-success" href="Apply.jsp?id=<%=rs.getString("id") %>" role="button">Apply</a> </td>
		</tr>
	<% }%>	
	
  </tbody>
</table>
 
</body>
</html>