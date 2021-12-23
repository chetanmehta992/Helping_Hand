    
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import swal from 'sweetalert';

public class VerifyCode extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            HttpSession session = request.getSession();
            User user= (User) session.getAttribute("authcode");
            
            String code = request.getParameter("authcode");
            
            if(code.equals(user.getCode())){
                
                try
{
    String s1 = (String)session.getAttribute("fname");
    String s2 = (String)session.getAttribute("age");
    String s3 = (String)session.getAttribute("rdiobtn");
    String s4 = (String)session.getAttribute("email");
    String s5 = (String)session.getAttribute("contact");
    String s6 = (String)session.getAttribute("subject");
    String s7 = (String)session.getAttribute("subject1");
    String s8 = (String)session.getAttribute("password");
Class.forName("com.mysql.cj.jdbc.Driver");

String db_url="jdbc:mysql://localhost:3306/helpinghand?allowPublicKeyRetrieval=true&useSSL=false";
String db_uname="root";
String db_upass="root";

Connection con=DriverManager.getConnection(db_url,db_uname,db_upass);
Statement st=con.createStatement();
String q="insert into donor(Full_Name,Age,Gender,email,contact,Blood_Group,Any_Disease,Password)"
        + "values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')";
st.executeUpdate(q);
    
con.close();


}
catch(Exception e)
{
}
                
                
                
                out.println(".");
       out.println("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11\"></script>\n" +
"<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n" +
"        \n" +
"<link href=\"//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css\" rel=\"stylesheet\">\n" +
"<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js\"></script>");
out.println("<script>\n" +
"    Swal.fire({\n" +
"  title: 'User Verified&#128522;',\n" +
"  text: 'You may Proceed',\n" +
"  icon: 'success',\n" +
"  iconColor:\"#4dff4d\",\n" +
"  confirmButtonText: 'OK!',\n" +
"confirmButtonColor: '#DC143C',\n" +
"allowOutsideClick:false\n" +
"}).then(function() {\n" +
"            window.location= \"home.jsp\";\n" +
"        });\n" +
"</script>");
        
      
            }else{
                out.println(".");
                out.println("<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11\"></script>\n" +
"<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\n" +
"          \n" +
"<link href=\"//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css\" rel=\"stylesheet\">\n" +
"<script src=\"//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js\"></script>");
               out.println("<script>\n" +
"    Swal.fire({\n" +
"  title: 'User Not Verified&#128533;',\n" +
"  text: 'Enter The Correct id',\n" +
"  icon: 'error',\n" +
"  iconColor:\"#ff471a\",\n" +
"  confirmButtonText: 'OK!',\n" +
"confirmButtonColor: '#DC143C',\n" +
"allowOutsideClick:false\n" +
"}).then(function() {\n" +
"            window.location= \"Verify.jsp\";\n" +
"        });\n" +
"</script>");
// 
            }
            
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}

    