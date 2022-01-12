<%-- 
    Document   : newbook
    Created on : 12 Jan, 2022, 5:53:39 PM
    Author     : alwincs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add new book</title>
    </head>
    <body>
        <h1>Add a new Book </h1>
        <form action="registerbook.jsp" method="post">
        Book Id:<input type="text" name="bookid"><br><br>
        Book Name:<input type="text" name="bookname"><br><br>
        Author:<input type="text" name="author"><br><br>
        Price:<input type="text" name="price"><br><br>
        Availability:<input type="text" name="availability"><br><br>
        <input type="Submit" value="ADD">
        <input type="Reset" value="CLEAR">
        </form>
        <br><br>
        <a href="index.jsp">Return to Home</a>
    </body>
</html>
