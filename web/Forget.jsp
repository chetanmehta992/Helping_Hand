<%@page import="java.sql.*" %>
<%@page import="newpackage.*" %>


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
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <h2>User Email Verification</h2>
    <form method="post">
      <input type="text" id="login" class="fadeIn second" name="fname" placeholder="User Name">
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="E-mail">
      <input type="submit" class="fadeIn fourth" value="Submit">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="" href="AdminLogin.jsp">Back</a>
    </div>

  </div>
</div>

<%
String s1=request.getParameter("fname");
String s2=request.getParameter("email");
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="select * from adminlogin where fname='"+s1+"' and email='"+s2+"'";
ResultSet rs=st.executeQuery(q);
//response.sendRedirect("Regis.jsp");  


if(rs.next())
{
     session.setAttribute("fname","s1");
    
//  response.sendRedirect("index.html");  
  response.sendRedirect("UserVerify1.java");  
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