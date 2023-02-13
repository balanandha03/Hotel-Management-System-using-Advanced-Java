<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="Navbar.html" %>
<link rel="stylesheet" href="css/register.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BOOKING</title>

</head>
<body class="reg" style="margin-bootom:0; margin-top:180px" ;>

  <div class="container">
    <section>
      <form action="Booking_details.jsp" method="post">
        <label>
          <input name="name" id="name" type="text" required />
          <div class="label-text">Full Name</div>
        </label>
        <label>
          <input type="email" name="email" id="email" required />
          <div class="label-text">Email</div>
        </label>
        <label>
          <input type="tel" name="phone" id="phone" required />
          <div class="label-text">Phone Number</div>
        </label>
        <label>
          <input type="text" name="add" id="add" required />
          <div class="label-text">ADDRESS</div>
        </label>
        <label>
          <input name="num" id="num" type="interger" required />
          <div class="label-text">Number of Rooms</div>
        </label>
        <label>
          <input type="date" name="in" 
        placeholder="dd-mm-yyyy" value=""
        min="1997-01-01" max="2030-12-31">
          <div class="label-text">CHECK_IN</div>
        </label>
        <label>
          <input type="date" name="out" 
        placeholder="dd-mm-yyyy" value=""
        min="1997-01-01" max="2030-12-31">
          <div class="label-text">CHECK_IN</div>
        </label>
        <button type="submit" value="Submit">Submit</button>
      </form>
    </section>
  </div>
</body>

</html>