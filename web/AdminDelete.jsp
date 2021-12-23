<%@page  import="java.sql.*"%>
<html>
<head>


<link rel="stylesheet" type="text/css"   href="css/xyz.css"  />
</head>
<body>

    <%--<%@include  file="mymenu1.jsp"%>--%>
    <center>
    <table border='1' cellpadding='12'>
    
<%
		String s1=request.getParameter("email");

                
		try{
			
			 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();
			
		
		
		String q="DELETE FROM  adminlogin WHERE email='"+s1+"' ";
		st.executeUpdate(q);
			response.sendRedirect("AdminDetails.jsp");
       out.print("<tr><th colspan='5'><h1 align='center'>data deleted</h1></th></tr>");		

%>	
	<%	
        	con.close();
		
		}catch(Exception e)
		{
			out.println(e);
			
		}
		
%>
    </table>
    </center>
</body>
</html>