<%@page import="java.sql.*;" %>
<%@page import="javax.servlet.http.Cookie.*;" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/home.css">
<title>Registration</title>
     <link rel="shortcut icon" href="css/HH.png"/>
</head>
<body>
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <form action="DonorRegis.jsp" Method="POST">
      <input type="text" id="login" class="fadeIn second" name="fname" placeholder="Full Name">
      <input type="text" id="login" class="fadeIn second" name="age" placeholder="Age">
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="E-mail">
      <input type="text" id="password" class="fadeIn third" field='requied' name="contact" placeholder="Contact">
      <div class="fadeIn second">
      <label class="radio" >
    <input class="radio-one" type="radio"  value="Female"  checked="checked" name="rdiobtn">
                <span class="checkmark"></span>
                Female
            </label>
    
            <label class="radio">
                <input class="radio-two" type="radio"  value="Male" name="rdiobtn">
                <span class="checkmark"></span>
                Male
            </label>
      <select class="option" name="subject">
                <option disabled="disabled" selected="selected">--Choose Blood Group--</option>
                <option> A+</option>
                <option> A-</opton>
                <option>B+</option>
                <option>B-</option>
                <option>O+</option>
                <option>O-</option>
                <option>AB+</option>
                <option>AB-</option>
            </select>
      </br>
      
<select class="option" name="subject1">
                <option disabled="disabled" selected="selected">--Any known Disease--</option>
                <option> yes</option>
                <option> No</opton>
            
            </select>
      </br>
      </div>
      <input type="text" id="password" class="fadeIn third"  field='requied'name="password" placeholder="Passowrd">
      <input type="submit" class="fadeIn fourth" value="Registration">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="index.jsp">Back</a>
    </div>

  </div>
</div>  
</body>
</html>
<%
String s1=request.getParameter("fname");
String s2=request.getParameter("age");
String s3=request.getParameter("rdiobtn");
String s4=request.getParameter("email");
String s5=request.getParameter("contact");
String s6=request.getParameter("subject");
String s7=request.getParameter("subject1");
String s8=request.getParameter("password");
//String s6=request.getParameter("cpass");
if(s1!=null && s2!=null && s3!=null && s4!=null && s5!=null && s6!=null && s7!=null && s8!=null)
 {
     
session.setAttribute("fname", s1);
session.setAttribute("age", s2);
session.setAttribute("rdiobtn", s3);
session.setAttribute("email", s4);
session.setAttribute("contact", s5);
session.setAttribute("subject", s6);
session.setAttribute("subject1", s7);
session.setAttribute("password", s8);

response.sendRedirect("UserVerify1");

//try
//{
//Class.forName("com.mysql.cj.jdbc.Driver");
//
//String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
//String db_uname="root";
//String db_upass="root";
//
//Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
//Statement st=con.createStatement();
//String q="insert into donor(Full_Name,Age,Gender,email,contact,Blood_Group,Any_Disease,Password)"
//        + "values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')";
//st.executeUpdate(q);
//response.sendRedirect("index.jsp");
%>
    <%--<%= "yamini"%>--%>
<%
//    
//con.close();
//
//
//}
//catch(Exception e)
//{
    %>
    <%--<%=e%>--%>
<%    
//}
}
%>