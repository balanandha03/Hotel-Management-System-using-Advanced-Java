<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%@ include file="Database.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn = null;
Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","bala1563");
try(
		Statement stmt = conn.createStatement();
     ) {	
	 String sql = "CREATE TABLE BOOKING_DETAILS (id INTEGER not NULL AUTO_INCREMENT,Full_Name VARCHAR(255),Email VARCHAR(255),Contact VARCHAR(255),Address VARCHAR(255),Number_of_Rooms INTEGER not NULL,In_Date VARCHAR(255),Out_Date VARCHAR(255), PRIMARY KEY ( id))"; 
	 stmt.execute(sql);
       	  
} 
catch (SQLException e) {
   
} 
%>
</body>
</html>