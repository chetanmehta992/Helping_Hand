<%@page import="java.sql.*"%>
<%
	String s1 = request.getParameter("email");
       
%>
<%@page import="javax.servlet.http.Cookie.*;" %>


	<link rel="shortcut icon" href="css/HH.png"/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/home.css">
<title>Admin Update Page</title>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
        <br>
        <h1 style="color: white;">Admin Details Update</h1>
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>
  
<%	try
		{
			 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();
			
		
	String q=" select * from adminlogin where email='"+s1+"'";
			ResultSet res=st.executeQuery(q);
                  
                       
			if(res.next())
			{ %>
    <!-- Login Form -->
    <form action="AdminUpdate1.jsp" >
      <input type="text"  class="fadeIn second" name="fname" value="<%= res.getString(1)%>" placeholder="Full Name">
      <input type="text"  class="fadeIn second" name="email" value="<%= res.getString(2)%>" placeholder="E-mail">
      <input type="text"  class="fadeIn third" name="contact" value="<%= res.getString(3)%>" placeholder="Contact">
      <!--<input type="text" class="fadeIn third" name="security_code" placeholder="Security_Code">-->
      <!--<input type="text"  class="fadeIn third" name="password" placeholder="Passowrd">-->
      <!--<input type="text"  class="fadeIn third" name="cpass" placeholder="Confirm-Password">-->
      <input type="submit" class="fadeIn fourth" value="Update">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="AdminDetails.jsp">Back</a>
    </div>

  </div>
</div>
<%}
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>		
		
