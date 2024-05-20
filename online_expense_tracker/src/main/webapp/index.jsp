<%@page import="org.hibernate.SessionFactory" %>
<%@page import="com.db.HibernateUtil" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/all_css.jsp" %>
</head>
<body>

<%@include file="component/navbar.jsp" %>

<% SessionFactory factory= HibernateUtil.getSessionFactory();
	out.print(factory);
	%>

<h1 class="text-center">Welcome to Online Expense Tracker! Please Login or Register to continue.</h1>



</body>
</html>