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
        // Execute a query
        out.print("Inserting records into the table...");  
        out.print("<br>");
        String name1 = request.getParameter("name");
        String email = request.getParameter("email");
        String number = request.getParameter("email");
        String add1 = request.getParameter("add");
        int room =Integer.parseInt(request.getParameter("num"));
        String in_D = request.getParameter("in");
        String out_D = request.getParameter("out");
        String sql = "INSERT INTO BOOKING_DETAILS(Full_Name,Email,Contact,Address,Number_of_Rooms,In_Date,Out_Date) VALUES ('"+name1+"','"+email+"','"+number+"','"+add1+"','"+room+"','"+in_D+"','"+out_D+"')";
        out.println(sql);
        stmt.execute(sql);
        
     } catch (SQLException e) {
     } 
%>
</body>
</html>