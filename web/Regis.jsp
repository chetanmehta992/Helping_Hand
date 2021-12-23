<%@page import="java.sql.*;" %>
<%@page import="javax.servlet.http.Cookie.*;" %>


	<link rel="shortcut icon" href="css/HH.png"/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/home.css">
<title>Admin Registration</title>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first"><br>
        <h1 style="color: white;">Admin Registration</h1>
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <form action="Regis.jsp" Method="POST">
      <input type="text" id="login" class="fadeIn second" name="fname" placeholder="Full Name">
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="E-mail">
      <input type="text" id="password" class="fadeIn third" field='requied' name="contact" placeholder="Contact">
      <input type="text" id="password" class="fadeIn third" field='requied' name="security_code" placeholder="Security_Code">
      <input type="text" id="password" class="fadeIn third"  field='requied'name="password" placeholder="Passowrd">
      <input type="text" id="password" class="fadeIn third" field='requied' field='requied' name="cpass" placeholder="Confirm-Password">
      <input type="submit" class="fadeIn fourth" value="Registration">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="dashboard.jsp">Back</a>
    </div>

  </div>
</div>


<%
String s1=request.getParameter("fname");
String s2=request.getParameter("email");
String s3=request.getParameter("contact");
String s4=request.getParameter("security_code");
String s5=request.getParameter("password");
String s6=request.getParameter("cpass");

if(s1!=null && s2!=null && s3!=null && s4!=null && s5!=null && s6!=null)
 {
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="insert into adminlogin(fname,email,contact,security_code,password,confirm_password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')";
st.executeUpdate(q);
response.sendRedirect("AdminDetails.jsp");
%>
    <%= "yamini"%>
<%
con.close();


}
catch(Exception e)
{
    %>
    <%=e%>
<%    
}
}
%>