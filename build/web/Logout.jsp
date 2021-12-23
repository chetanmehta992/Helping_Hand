<%
    HttpSession se=request.getSession();
    se.invalidate();
    response.sendRedirect("index.jsp");

%>