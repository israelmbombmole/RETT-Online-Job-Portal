<%-- 
    Document   : work
    Created on : 17 Jun 2021, 2:20:05 PM
    Author     : 219120498
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");
}
%>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root","cput"); //create connection
	
	if(request.getParameter("btn_register")!=null) //check register button click event not null
	{
		String work, reference;
		
		work=request.getParameter("txt_work");
                reference=request.getParameter("txt_ref");

		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("insert into work(work, reference) values(?,?)"); //sql insert query
		pstmt.setString(1,work);
                pstmt.setString(2,reference);

                
		
		pstmt.executeUpdate(); //execute query
		
		request.setAttribute("successMsg","work experience  Successfully...! Please login"); //register success messeage

		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>  




<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Register qualification</title>

	<link rel="stylesheet" href="css/main.css">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/login-register.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/login-register.css">
	
        <title>work experience</title>
    </head>
    <body>
        <ul>
        <li><a href="view.jsp"> Apply here </a></li>
        
    </ul>

    <div class="main-content">

        <form class="form-register" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Register</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //register success message
					}
					%>
					</p>
				   
				   </br>
				   
                    <div class="form-row">
                        <label>
                           
                        
                            <textarea class="form-row" type="text" name="txt_work" id="work" placeholder="  enter your work experience" rows="8" cols="65"></textarea>
                        </label>
                    </div>
		    
                    <div class="form-row">
                        <label>
                            <span>References</span>
                            <input type="text" name="txt_ref" id="reference" placeholder="enter reference">
                        </label>
                    </div>
                                 
            
            	<input type="submit" name="btn_register" value="Register">
		<a href="index.jsp" class="form-log-in-with-existing"><b>Back</b></a>	
    </body>
</html>
