<%@ page import="java.sql.*" %>  

<%
if(session.getAttribute("qualification")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("register.jsp");
}
%>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbuser","root","cput"); //create connection
	
	if(request.getParameter("btn_register")!=null) //check register button click event not null
	{
		String field, periode, institution, place, level, qualification;
		
		field=request.getParameter("txt_field");
                periode=request.getParameter("txt_period");
                institution=request.getParameter("txt_institution");
                place=request.getParameter("txt_place");
                level=request.getParameter("txt_level");
                qualification=request.getParameter("txt_qualification");

		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("insert into qualification(field, periode, institution, place, level, qualification) values(?,?,?,?,?,?)"); //sql insert query
		pstmt.setString(1,field);
                pstmt.setString(2,periode);
                pstmt.setString(3,institution);
                pstmt.setString(4,place);
                pstmt.setString(5,level);
                pstmt.setString(6,qualification);

                
		
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
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Register qualification</title>

	<link rel="stylesheet" href="css/main.css">
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <link href="css/login-register.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/login-register.css">
	
	<!-- javascript for registeration form validation-->
	
        <!--
        
        
        
        <script>	
	
		function validate()
		{
			var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var last_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9, !@#$%&*()<> charecter 
			
			var fname = document.getElementById("fname"); //textbox id fname
            var lname = document.getElementById("lname"); //textbox id lname
            var email = document.getElementById("email"); //textbox id email
            var password = document.getElementById("password"); //textbox id password
			
			if(!first_name.test(fname.value) || fname.value=='') 
            {
				alert("Enter Firstname Alphabet Only....!");
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
			if(!last_name.test(lname.value) || lname.value=='') 
            {
				alert("Enter Lastname Alphabet Only....!");
                lname.focus();
                lname.style.background = '#f08080';
                return false;                    
            }
			if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Enter Valid Email....!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
			if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("Password Must Be 6 to 12 and allowed !@#$%&*()<> character");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
		}
		
	</script>	

        
        -->
</head>

<body>

    <ul>
        <li><a href=>RETT agency</a></li>
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
                            <span>Field studied</span>
                            <input type="text" name="txt_field" id="field" placeholder="enter your field">
                        </label>
                    </div>
					<div class="form-row">
                        <label>
                            <span>Period</span>
                            <input type="text" name="txt_period" id="period" placeholder="enter period">
                        </label>
                    </div>

                     <div class="form-row">
                        <label>
                            <span>Institution</span>
                            <input type="text" name="txt_institution" id="institution" placeholder="enter place where you studied">
                        </label>
                    </div>               
                                   
                    <div class="form-row">
                        <label>
                            <span>Place</span>
                            <input type="text" name="txt_place" id="place" placeholder="enter place where you studied">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Level</span>
                            <input type="text" name="txt_level" id="level" placeholder="enter your NQF level">
                        </label>
                    </div>
                                   
                    <div class="form-row">
                        <label>
                            <span>Qualification</span>
                            <input type="text" name="txt_qualification" id="qualification" placeholder="enter your qualification">
                        </label>
                    </div>

					<input type="submit" name="btn_register" value="Register">
					
                </div>
		 <a href="index.jsp" class="form-log-in-with-existing">Already have an account? <b> Login here </b></a>		
                <a href="work.jsp" class="form-log-in-with-existing"><b> Add work experience here </b></a>

            </div>

        </form>

    </div>

</body>

</html>
