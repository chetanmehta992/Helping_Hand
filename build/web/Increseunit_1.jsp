 <%@page import="java.sql.*;" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blood unit</title>
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
        <li><a href="home.jsp">Home</a></li>
        
        <!--<a href="#">Home</a>-->
        <li>
          <label for="btn-1" class="show">Features +</label>
          <a href="#">Donor</a>
          <input type="checkbox" id="btn-1">
          <ul>
            <li><a href="DonorDetails1.jsp">Donor details</a></li>
             <li>
              <label for="btn-3" class="show">More +</label>
              <a href="#">Time Period</a>
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
            <li><a href="Increseunit_1.jsp">Blood unit</a></li>
            <!--<li><a href="#">Decrease unit</a></li>-->
         
          </ul>
        </li>
        <li>
          <label for="btn-2" class="show">Services +</label>
          <a href="#">Search</a>
          <input type="checkbox" id="btn-2">
          <ul>
            <li><a href="SearchDonor_1.jsp">By blood group</a></li>
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
     
        
        
        <li>
          <label for="btn-1" class="show">Features +</label>
          <a href="About.html">About</a>
          <input type="checkbox" id="btn-1">
          <ul>
            <li><a href="#">Pages</a></li>
            <li><a href="#">Elements</a></li>
          </ul>
        </li>
        <li>
          <label for="btn-2" class="show">Services +</label>
          <a href="services.html">Services</a>
          <input type="checkbox" id="btn-2">
          <ul>
            <li><a href="#">Food Donation</a></li>
            <li><a href="#">Blood-Donation</a></li>
            <li>
              <label for="btn-3" class="show">More +</label>
              <a href="#">More </a>
              <input type="checkbox" id="btn-3">
              <ul>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><a href="contact.html">Contact</a></li>
        <li><a href="Logout.jsp">LogOut</a></li>
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
	    
    <table class="alignment">
  <!--<tr>-->
      <!--<th>Full Name</th>-->
        <!--<th>Age</th>-->
        <!--<th>Gender</th>-->
        <!--<th>Email</th>-->
<!--        <th>Date</th>-->
        <!--<th>contact</th>-->
        <!--<th>Blood Group</th>-->
        <!--<th>Any Disease</th>-->
        <!--<th>Donoted Date</th>-->

  <!--</tr>-->
 
 
    
       <%	 
           int a1=0,a2=0,b1=0,b2=0,ab1=0,ab2=0,o1=0,o2=0;
           while(rs.next())
           {
           if(rs.getString("Blood_Group").equals("A+")){
           a1++;
           }
           else if(rs.getString("Blood_Group").equals("A-")){
           a2++;
           }
           else if(rs.getString("Blood_Group").equals("B+")){
           b1++;
           }
           else if(rs.getString("Blood_Group").equals("B-")){
           b2++;
           }
           else if(rs.getString("Blood_Group").equals("O+")){
           o1++;
           }
           else if(rs.getString("Blood_Group").equals("O-")){
           o2++;
           }
           else if(rs.getString("Blood_Group").equals("AB+")){
           ab1++;
           }
           else if(rs.getString("Blood_Group").equals("AB-")){
           ab2++;
           } 
%>
   
                          
  
    <% } %>	
   
       
     <tr>
    <th>Blood Group</th>
    <th>Unit</th>
<th>
  </tr>
  <tr>
    <td>A+</td>
    <td><%= a1 %> </td>
  </tr> 
  <tr>
    <td>A-</td>
    <td><%= a2 %> </td>
  </tr> 
  <tr>
    <td>B+</td>
    <td><%= b1 %> </td>
  </tr> 
  <tr>
    <td>B-</td>
    <td><%= b2 %> </td>
  </tr> 
  <tr>
    <td>O+</td>
    <td><%= o1 %> </td>
  </tr> 
  <tr>
    <td>O-</td>
    <td><%= o2 %> </td>
  </tr> 
  <tr>
    <td>AB+</td>
    <td><%= ab1 %> </td>
  </tr> 
  <tr>
    <td>AB-</td>
    <td><%= ab2 %> </td>
  </tr> 
     
       
   

    
        
    </tr>    
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
