
<%@page import="java.sql.*" %>
<%--<%@page import="jakarta.servlet.http.Cookie.*;" %>--%>
<%--<%@page import="com.TransportPortal.MyFunctions"%>--%>

<html>
    <title>Admin Login</title>
     <link rel="shortcut icon" href="css/HH.png"/>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/home.css">
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
        <br>
        <h1 style="color: white;">Admin Login</h1>
      <img src="css/doctor.png" id="icon" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <form action="">
      <input type="text" id="login"  class="fadeIn second" name="uname" placeholder="Username">
      <input type="text" id="password" class="fadeIn third" name="upass" placeholder="Password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

  </div>
</div>
</body>
</html>
<!------------------------------------------->


<%
String s1=request.getParameter("uname");
String s2=request.getParameter("upass");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="select * from adminlogin where fname='"+s1+"' and password='"+s2+"'";
ResultSet rs=st.executeQuery(q);
//response.sendRedirect("Regis.jsp");  


if(rs.next())
{
     session.setAttribute("uname","s1");
    
  response.sendRedirect("dashboard.jsp");  
    if(s1.equals("") && s2.equals(""))
    {
//     response.sendRedirect("Regis.jsp");  

      
    }  
else
    { 
%>
     <script>
         
    alert("username or password is incorrect");
     
     </script>
            
    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">username or password is incorrect</p> 
    
    <%
    }
}
    
    

  
con.close();


}
catch(Exception e)
{
 
}

        
%>