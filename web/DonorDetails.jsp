 <%@page import="java.sql.*;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doner Details</title>
        <!--<link rel="stylesheet" type="text/css" href="Style.css">-->
        <link rel="stylesheet" type="text/css" href="css/xyz.css">
         <link rel="stylesheet" href="css/Dstyle1.css">
    <link rel="stylesheet" href="js/type.min.js">
	<link rel="shortcut icon" href="css/HH.png"/>
   
       
  </head>
  <body>
       <%@include file="css/Link.jsp"%>
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
            <li><a href="SearchDonor">By blood group</a></li>
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
        
         <%

                try
                {
 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();
		
		
		String q="select * from donor";
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
                              String email=rs.getString("email");
%>
   
                          
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
      <td><button type="button" class="  btn-primary" name="button"><a style="color:white" href="DonorUpdate1.jsp?email=<%= email %>">UPDATE</a></button></td>
      <td><button type="button" class=" btn-danger"><a style="color:white" href="DonorDelete.jsp?email=<%= email %>">DELETE</a></button></td>
<!--    <td>  <a style="color:blue" href="Delete.jsp?s_no=<%= email %>">UPDATE</a></td>
    <td>  <a style="color:blue" href="Delete.jsp?s_no=<%= email %>">DELETE</a></td>-->
      
     
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
		
		
    %>
    </body>
</html>
