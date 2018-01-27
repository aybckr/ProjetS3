<%-- 
    Document   : index
    Created on : 26 janv. 2018, 15:47:20
    Author     : ayoub
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sending email</title>
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>
    <center>
        <form action="EmailServlet">   
            <table>
                <tr>
                    <td>From</td>
                    <td><input type="text" name="from" required></td>
                </tr>
                
                <tr>
                    <td>Subject</td>
                    <td><input type="text" name="subject" required></td>
                </tr>    
                <tr>
                    <td>Message</td>
                    <td><textarea cols="25" rows="8" name="message"></textarea></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="submit">
        </form>
    </center>
</body>
</html>