<%-- 
    Document   : login
    Created on : 20 nov. 2017, 12:37:49
    Author     : Hajar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
<%
try{    
    String email = request.getParameter("email");    
    String mdp = request.getParameter("mdp");
    
    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/foodapp","hajar","hajar");
    Statement st = con.createStatement();
  
    ResultSet rs;
    rs = st.executeQuery("select * from compte where Email='" + email + "' and password='"+mdp+"'");
 
    if (rs.next()) {
        %>
        <a>error * =  <%=rs.getString("type")%> </a> 
        <%
        session.setAttribute("email",email);
        request.getSession().setAttribute("cin", rs.getString("cin"));
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("profile.jsp?email="+email+"&type="+rs.getString("type"));
    } else {
        response.sendRedirect("fail.jsp");
    }
 
}
catch(Exception e){
    out.print(e);
}
%>
    </body>
</html>
