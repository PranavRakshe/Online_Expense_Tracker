<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/all_css.jsp" %>
</head>
<body>
<%@include file="component/navbar.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header">
<p class="text-center fs-3">Register Page</p></div>
<div class="card-body">
<form action="userRegister" method="post">
<div class="mb-3">
<label>Enter Full Name</label>
<input type="text" name="fullname" class="form-control"></div>
<div class="mb-3">
<label>Email</label>
<input type="email" name="email" class="form-control"></div>
<div class="mb-3">
<label>Password</label>
<input type="password" name="password" class="form-control"></div>
<button class="btn btn-success col-md-12">Register</button>
</form></div></div></div></div></div>

</body>
</html>