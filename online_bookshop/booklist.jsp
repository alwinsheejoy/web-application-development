<%-- 
    Document   : booklist
    Created on : 12 Jan, 2022, 5:54:06 PM
    Author     : alwincs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display the books Present</title>
    </head>
    <body>
        <a href="index.jsp">Return to Home</a>
 <br><br><br>
<center>
 <h1>Books Present</h1>
 <table border="1">
 <tr>
 <th>Book ID</th>
 <th>Book Name</th>
 <th>Author</th>
 <th>Price</th>
 <th>Availability</th>
 </tr>
 <%
 try{
 Class.forName("org.postgresql.Driver");
 Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bookshop","postgres","root");
 PreparedStatement stmt= con.prepareStatement("Select *from book");
 ResultSet rs= stmt.executeQuery();
 while(rs.next()){
 %>
 <tr>
 <td><%=rs.getString(1)%></td>
 <td><%=rs.getString(2)%></td>
 <td><%=rs.getString(3)%></td>
 <td><%=rs.getString(4)%></td>
 <td><%=rs.getString(5)%></td>
 </tr>
 <%
 con.close();
 }
 }
 catch(Exception e){
 out.println("An exception has occured.");
 out.println(e);
 }
 finally{
 }
%>
</table>
</center>
    </body>
</html>
