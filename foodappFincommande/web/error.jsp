<%-- 
    Document   : error
    Created on : 26 janv. 2018, 15:56:19
    Author     : ayoub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error</title>
      <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
      <center>
        <div class="error">
          <h2>Error</h2>
            <p>
               Mail not sent: <%= request.getAttribute("ErrorMessage") %>    
            </p>
        </div>
      </center>
    </body>
</html>