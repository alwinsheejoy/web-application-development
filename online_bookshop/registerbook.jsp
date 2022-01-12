<%-- 
    Document   : newuser
    Created on : 12 Jan, 2022, 5:53:51 PM
    Author     : alwincs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
 String bookid=request.getParameter("bookid");
 String bookname=request.getParameter("bookname");
 String author=request.getParameter("author");
 String price=request.getParameter("price");
 String availability=request.getParameter("availability");
 try{
 Class.forName("org.postgresql.Driver");
 Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/bookshop","postgres","root");
 PreparedStatement stmt= con.prepareStatement("Insert into book Values(?,?,?,?,?);");
 stmt.setString(1,bookid);
 stmt.setString(2,bookname);
 stmt.setString(3,author);
 stmt.setString(4,price );
 stmt.setString(5,availability);
 stmt.executeUpdate();
 out.println("<h1>Book Details added Successfully</h1>");
 out.println("<a href='index.jsp'>Return to Home</a>");
 con.close();
 }
catch(Exception e){
 out.println("An exception has occured.");
 out.println(e);

}

%>
<%--
Create Table book(
bookid VARCHAR(10),
bookname VARCHAR(45),
author VARCHAR(40),
price VARCHAR(35),
availability VARCHAR(10));
--%>
