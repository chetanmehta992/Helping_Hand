 <%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Search Donor</title>
    <link rel="stylesheet" href="css/Dstyle1.css">
   
    <!--<link rel="stylesheet" type="text/css"   href="css/abc.css"  />-->
<!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>-->
<!--<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
<!------ Include the above in your HEAD tag ---------->
<!--<link rel="stylesheet" href="css/home.css">-->
    <link rel="stylesheet" href="js/type.min.js">
	<link rel="shortcut icon" href="css/HH.png"/>
       
        
  </head>
  <body>
    <nav>
      <div ><img class="logo" src="css/HH.png">
	  </div>
      <input type="checkbox" id="btn">
      <ul>
        <!--<a href="#">Home</a>-->
        <li>
          <label for="btn-1" class="show">Features +</label>
          <a href="#">Donor</a>
          <input type="checkbox" id="btn-1">
          <ul>
            <li><a href="DonorDetails.jsp">Donor details</a></li>
             <li>
              <label for="btn-3" class="show">More +</label>
              <a href="#">Time Period </a>
              <input type="checkbox" id="btn-3">
              <ul>
                <!--<li><a href="#">90</a></li>-->
                <li><a href="Donoremail.jsp">90 Days</a></li>
              
              </ul>
            <!--</li>-->

            <!--<li><a href="#">Icons</a></li>-->
          </ul>
        </li>
        <li>
          <label for="btn-1" class="show">Features +</label>
          <a href="#">Stock</a>
          <input type="checkbox" id="btn-1">
          <ul>
            <li><a href="Increseunit.jsp">Blood Unit</a></li>
            <!--<li><a href="#">Decrease unit</a></li>-->
         
          </ul>
        </li>
        <li>
          <label for="btn-2" class="show">Services +</label>
          <a href="#">Search</a>
          <input type="checkbox" id="btn-2">
          <ul>
            <li><a href="SearchDonor.jsp">By blood group</a></li>
            <!--<li><a href="#">Blood-Donation</a></li>-->
            <li>
              <label for="btn-3" class="show">More +</label>
              <!--<a href="#">More </a>-->
<!--              <input type="checkbox" id="btn-3">
              <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
              </ul>-->
            <!--</li>-->
          </ul>
        </li>
        <!--<li><a href="#">Contact</a></li>-->
        <!--<li><a href="AdminLogin.jsp">Admin</a></li>-->
        <li>
          <label for="btn-1" class="show">Features +</label>
          <a href="#">Admin</a>
          <input type="checkbox" id="btn-1">
          <ul>
            <li><a href="Regis.jsp">Add admin</a></li>
            <li><a href="AdminDetails.jsp">Admin Details</a></li>
         
          </ul>
        </li>
         <li><a href="Logout.jsp">Logout</a></li>
        <!--<li><a href="AdminLogin.jsp">Admin</a></li>-->
        <li>
      </ul>
    </nav>
</div>
  <title>Donor Registration</title>
   <link rel="stylesheet" href="css/home3.css">
   


    <div class="regform">
        <h1>Search Donor</h1>
</div>
<div class="main">
    
        <form action="SearchDonor.jsp" method="GET">
            <div id="name">
                  
           <input type="text" class="fadeIn second" name="Blood_Group" placeholder="Enter Blood Group">
            
            </div>
            <button type="submit" class="button">Search</button>
        </form>
    
</div>
</body>
</html>
<%--<%@include file="css/Link.jsp"%>--%>
     <link rel="stylesheet" type="text/css" href="css/xyz.css">
   <%
             String s1=request.getParameter("Blood_Group");
if(s1!=null)
{
                try
                {
 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();
		
		
		String q="select * from Donor where Blood_Group='"+s1+"'";
		ResultSet rs=st.executeQuery(q);
                %>
	     <table>
  <tr>
      <th>Full Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Email</th>
<!--        <th>Date</th>-->
        <th>contact</th>
        <th>Blood Group</th>
        <th>Any Disease</th>
        <th>Donoted Date</th>

  </tr>
 
 
       <%	     while(rs.next())
                        {
                              String s_no=rs.getString("Blood_Group");
%>
   
                             <tbody>
    <tr>
      
             <td><%=rs.getString("Full_Name") %> </td>
    <td><%=rs.getString("Age") %></td>
    <td><%=rs.getString("Gender") %></td>
    <td><%=rs.getString("email") %></td>
    <!--<td><%=rs.getString("date") %></td>-->
    <td><%=rs.getString("contact") %></td>
    <td><%=rs.getString("Blood_Group") %></td>
    <td><%=rs.getString("Any_Disease") %></td>
    <td><%=rs.getString("donoted_date") %></td>

        
<!--  <button type="button" class="  btn-primary" name="button"><a style="color:white" href="Update.jsp?id=<?php echo $row['id']; >">UPDATE</a></button>
   <button type="button" class=" btn-danger"><a   style="color:white" href="Delete.php?id=<?php echo $row["id"]; ?>">DELETE</a></button>
      -->
      <!--<td><button type="button" class="  btn-primary" name="button"><a style="color:white" href="Update3.jsp?s_no=<%= s_no %>">UPDATE</a></button></td>-->
      <!--<td><button type="button" class=" btn-danger"><a style="color:white" href="Delete.jsp?s_no=<%= s_no %>">DELETE</a></button></td>-->
<!--    <td>  <a style="color:blue" href="Delete.jsp?s_no=<%= s_no %>">UPDATE</a></td>
    <td>  <a style="color:blue" href="Delete.jsp?s_no=<%= s_no %>">DELETE</a></td>-->
      
     
    </tr>
    <% } %>	
      
    <!--</tbody>-->
  </table>
    
  
          </div>
        </div>
        
      </div>
    </div>
    <%	con.close();
		
		}catch(Exception e)
		{
			out.println(e);
			
		}
}
		
    %>

