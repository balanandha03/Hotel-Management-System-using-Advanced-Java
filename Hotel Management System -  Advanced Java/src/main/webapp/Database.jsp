<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn_1 = null;
Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
conn_1 = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","bala1563");
try(
		Statement stmt = conn_1.createStatement();
     ) {		      
        String sql = "CREATE DATABASE HOTEL";
        stmt.execute(sql); 	  
     } catch (SQLException e) {
        
     } 
%>
</body>
</html>