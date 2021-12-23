<%@page import="java.sql.*"%>
<%
	String s1 = request.getParameter("email");
       
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/home2.css">
    <title>Donor Update Page</title>
</head>
<body>
         <!--<div>-->
         
<%	try
		{
			 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();
			
		
	String q=" select * from donor where email='"+s1+"'";
			ResultSet res=st.executeQuery(q);
                  
                       
			if(res.next())
			{ %>
       <div class="regform">
        <h1>
Donor Update Form</h1>
</div>
<div class="main">
    
        <form action="Donorupdate2.jsp">
            <div id="name">
                <h2 class="name">Full Name </h2>
                <input class="firstname" type="text" name="full_name" value="<%= res.getString(1)%>" placeholder="Fullname"><br>
           
            </div>
			
<h2 class="name">Age </h2>
<input class="firstname" type="text" name="age" value="<%= res.getString(2)%>" placeholder="Age" >

 
 <h2 id="coustomer">Gender 
<label class="radio1">

    <input class="radio-one" type="radio"  value="<%= res.getString(3)%>" checked="checked"   name="rdiobtn">
                <span class="checkmark"></span>
                <%= res.getString(3)%>
            </label>
    
            
 </h2>
  <!-- <label class="phone-number">Age</label> -->
<!-- <input class="company" type="text" name="company"> -->
            <h2 class="name">Email</h2>
<input class="email" type="email" name="email" value="<%= res.getString(4)%>" placeholder="Email">
  <!-- <label class="phone-number">Email</label> -->
         <h2 class="name">Phone</h2>
<!-- <input class="Code" type="text" name="area_code"> -->
            <!-- <label class="area-code">Area Code</label> -->
			
            <input class="firstname" type="text" name="contact"value="<%= res.getString(7)%>" placeholder="Phone Number">
            <!-- <label class="phone-number">Phone Number</label> -->
    
	
    
            <h2 class="name">Blood Group</h2>
<select class="option" name="subject"value="<%= res.getString(8)%>">
                <option value="<%= res.getString(8)%>" selected="selected"><%= res.getString(8)%></option>
                <option> A+</option>
                <option> A-</opton>
                <option>B+</option>
                <option>B-</option>
                <option>O+</option>
                <option>O-</option>
                <option>AB+</option>
                <option>AB-</option>
            </select>
			  <h2 class="name">Any known Disease</h2>
<select class="option" name="subject1" value="<%= res.getString(9)%>">
                <option  value="<%= res.getString(9)%>" selected="selected"><%= res.getString(9)%></option>
             
                <option> yes</option>
                <option> No</opton>
            
            </select>
                <h2 class="name">Blood Donoted Date</h2>
<input class="email" type="text" name="donoted_date" value="<%= res.getString(10)%>" placeholder="YY/MM/DD">
	
    <!-- A+, A-,  B+, B-,  O+, O-,  AB+, AB-). -->
            <!-- <h2 id="coustomer"></h2> -->
<!-- <label class="radio"> -->
                <!-- <input class="radio-one" type="radio" checked="checked" name="rdiobtn"> -->
                <!-- <span class="checkmark"></span> -->
                <!-- Female -->
            <!-- </label> -->
    
            <!-- <label class="radio"> -->
                <!-- <input class="radio-two" type="radio" name="rdiobtn"> -->
                <!-- <span class="checkmark"></span> -->
                <!-- Male -->
            <!-- </label> -->
    
            <button type="submit">Update</button>
            <a href="DonorUpdate1.jsp"></a>
    
        </form>
</div>
</body>
</html>
			<%}
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>		
		
