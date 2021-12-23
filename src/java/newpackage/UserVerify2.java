      package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UserVerify2 extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //feth form value
           String name = request.getParameter("username");
           String email = request.getParameter("useremail");
           String pass="";
      		//create instance object of the SendEmail Class
           SendEmail1 sm = new SendEmail1();
      		//get the 6-digit code
           String code = sm.getRandom();
           
                  try
{
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="select * from donor where email ='"+email+"'";
ResultSet rs=st.executeQuery(q);
 if(rs.next()) {
  pass=rs.getString("Password");
  
 
           
      		//craete new user using all information
           User user = new User(name,email,pass);
           
           //call the send email method
           boolean test = sm.sendEmail(user);
           
      		//check if the email send successfully
           if(test){
               out.println(".");
       out.println("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11\"></script>\n" +
"<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n" +
"        \n" +
"<link href=\"//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css\" rel=\"stylesheet\">\n" +
"<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js\"></script>");
out.println("<script>\n" +
"    Swal.fire({\n" +
"  title: 'Mail Send Succesfull!!',\n" +
"  text: 'You may Proceed',\n" +
"  icon: 'success',\n" +
"  iconColor:\"#4dff4d\",\n" +
"  confirmButtonText: 'OK!',\n" +
"confirmButtonColor: '#DC143C',\n" +
"allowOutsideClick:false\n" +
"}).then(function() {\n" +
"            window.location= \"index.jsp\";\n" +
"        });\n" +
"</script>");
           }else{
      		  out.println("Failed to send verification email");
      	   }
           
        }else{
  out.println("Failed to send verification email");
 }
    
con.close();


}
catch(Exception e)
{
}
        }
    }

   
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

      