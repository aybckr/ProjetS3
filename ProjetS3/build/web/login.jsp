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
    Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/FoodApp","hajar","hajar");
    Statement st = con.createStatement();
  
    ResultSet rs;
    rs = st.executeQuery("select * from compte where Email='" + email + "' and password='"+mdp+"'");
 
    if (rs.next()) {
        session.setAttribute("email",email);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp?email="+email+"&type="+rs.getString("type"));
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
 
}
catch(Exception e){
    out.print(e);
}
%>
    </body>
</html>
