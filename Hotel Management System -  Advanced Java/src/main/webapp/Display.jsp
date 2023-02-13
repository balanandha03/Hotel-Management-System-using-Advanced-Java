<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="Navbar.html" %>
<HTML>
<div class="head" style="margin-top: 150px;">
<title>Display Costumer Details</title>
     <h1><span class="blue">&lt;</span><span class="blue">&gt;</span> <span class="yellow">Customer Details</pan></h1>
	
      <link rel="stylesheet" href="css/Display.css">
       <%
       	  Connection conn = null;
       	  Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
       	  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","bala1563");
          Statement st=conn.createStatement();
          ResultSet resultset= st.executeQuery("select * from hotel.booking_details");
       %>
</div>
       </BODY>
      <TABLE class="container">
      <thead>
      <TR>
      <TH>ID</TH>
      <TH>Name</TH>
      <TH>Email</TH>
      <TH>Contact</TH>
      <TH>Address</TH>
      <TH>Number of Rooms</TH>
      <TH>CheckIn Date</TH>
      <TH>CheckOut Date</TH>
      </TR>
      <thead>
      <% while(resultset.next()){ %>
      <tbody>
		<tr>
			<td> <%= resultset.getInt(1) %></td>
			<td> <%= resultset.getString(2) %></td>
			<td> <%= resultset.getString(3) %></td>
			<td> <%= resultset.getString(4) %></td>
			<td> <%= resultset.getString(5) %></td>
			<td> <%= resultset.getString(6) %></td>
			<td> <%= resultset.getString(7) %></td>
			<td> <%= resultset.getString(8) %></td>
		</tr>	
	</tbody>
	<% } %>
</table>
     </BODY>
</HTML>
