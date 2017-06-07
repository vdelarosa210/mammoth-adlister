<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: violet
  Date: 6/6/17
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% if (request.getMethod().equalsIgnoreCase("post")) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("admin") && password.equals("password")) {
        response.sendRedirect("/profile.jsp");
    }
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Navbar</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="partials/stylesheet.css">
</head>
<body>
<%@ include file="partials/navbar.html" %>
<h1>San Antonio craigslist</h1>

<div class="col-lg-12">Community</div>
<div class="col-lg-12">Housing</div>
<div class="col-lg-12">Jobs</div>
<div class="col-lg-12">Personals</div>
<div class="col-lg-12">For Sale</div>
<div class="col-lg-12">Discussion Forums</div>
<div class="col-lg-12">Services</div>
<div class="col-lg-12">Gigs</div>
<div class="col-lg-12">Resume</div>

<form method="post">
    <label>Username</label>
    <input type="text" name="username">
    <label>Password</label>
    <input type="password" name="password">
    <button type="submit">Login</button>
</form>


</body>
</html>