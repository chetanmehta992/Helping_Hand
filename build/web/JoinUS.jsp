<%@page import="java.sql.*;" %>
<%@page import="javax.servlet.http.Cookie.*;" %>
<title>Volunteer US</title>

	<link rel="shortcut icon" href="css/HH.png"/>
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
        
    <h2 class="">Volunteer US</h2>
    <br>
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <form action="JoinUS.jsp" >
      <input type="text" id="login" class="fadeIn second" name="fname" placeholder="Full Name">
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="E-mail">
      <input type="text" id="login" class="fadeIn third" name="contact" placeholder="Contact">
      <!--<input type="text" id="login" class="fadeIn third" name="age" placeholder="age">-->
      <!--<input type="text" id="password" class="fadeIn third" name="cpass" placeholder="Confirm-Password">-->
<!--     <div class="dropdown-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>-->
      <input type="submit" class="fadeIn fourth" value="Registration">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="volunteer.html">Back</a>
    </div>

  </div>
</div>

<%
String s1=request.getParameter("fname");
String s2=request.getParameter("email");
String s3=request.getParameter("contact");


if(s1!=null && s2!=null && s3!=null )
 {
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="insert into volunteer(FULL_NAME,email,contact) values('"+s1+"','"+s2+"','"+s3+"')";
st.executeUpdate(q);

%> <script>
         
    alert("Thank you for participate ");
     
     </script>
            

    <%= "yamini"%>
<%
con.close();

    response.sendRedirect("volunteer.jsp");

}
catch(Exception e)
{
    %>
    <%=e%>
<%    
}
}
%>