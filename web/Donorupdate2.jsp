<%@page import="java.sql.*"%>
<%
    String s1=request.getParameter("full_name");
String s2=request.getParameter("age");
String s3=request.getParameter("rdiobtn");
String s4=request.getParameter("email");
//String s5=request.getParameter("date");
String s6=request.getParameter("contact");
String s7=request.getParameter("subject");
String s8=request.getParameter("subject1");
String s9=request.getParameter("donoted_date");

		try
		{
			 Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);

		Statement st=con.createStatement();

			String q="update donor set  Full_NAME='"+s1+"',Age='"+s2+"',Gender='"+s3+"',email='"+s4+"',"
                                + "contact='"+s6+"',Blood_Group='"+s7+"',Any_Disease='"+s8+"',donoted_date='"+s9+"' where email='"+s4+"'";
                        st.executeUpdate(q);
			out.println("Record updated successfully");
                        response.sendRedirect("DonorDetails.jsp");
			con.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
%>