<%@ page import="java.sql.*" %> 

<!DOCTYPE html>

<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Welcome : <%=session.getAttribute("login")%></title>

	<link rel="stylesheet" href="css/main.css">
        <link href="css/login-register.css" rel="stylesheet" type="text/css"/>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/login-register.css">

</head>

<body>

    <ul>
        <li><a href="view.jsp"> Apply here </a></li>
    </ul>

    <div class="main-content">
	
	<center>
	
	<%
	if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
	{
		response.sendRedirect("Apply.jsp"); 
	}
	%>
	
	<h1> Welcome, <%=session.getAttribute("login")%> </h1>

	<h2><a href="logout.jsp">Logout</a></h2>
    
	</center>
        </br>
        
        <%
        try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root","cput"); //create connection
	
	if(request.getParameter("btn_register")!=null) //check register button click event not null
	{
		String subject;
		
		
		subject=request.getParameter("subject");
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("insert into course(subject) values(?)"); //sql insert query
		
                pstmt.setString(1, subject);
		
		pstmt.executeUpdate(); //execute query
		
		request.setAttribute("successMsg","Register Successfully...! Please login"); //register success messeage

		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
 
        %>
       	
    </div>

</body>

</html>
