<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int id = Integer.parseInt(request.getParameter("id"));

	ExpenseDao dao= new ExpenseDao(HibernateUtil.getSessionFactory());
	Expense ex = dao.getExpenseByID(id);
	%>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class ="card-header text-center">
<p class ="fs-3">Edit Expense</div>
<div class="card-body">
<form action="../updateExpense" method= "post">
<div class = "mb-3">
<label>Title</label>
<input type = "text" name ="title" class= "form-control" value = "<%=ex.getTitle()%>">
</div>
<div class = "mb-3">
<label>Date</label>
<input type = "date" name ="date" class= "form-control" value = "<%=ex.getDate()%>">
</div>
<div class = "mb-3">
<label>Time</label>
<input type = "text" name ="time" class= "form-control" value = "<%=ex.getTime()%>">
</div>
<div class = "mb-3">
<label>Description</label>
<input type = "text" name ="description" class= "form-control" value = "<%=ex.getDescription()%>">
</div>
<div class = "mb-3">
<label>Price</label>
<input type = "text" name ="price" class= "form-control" value = "<%=ex.getPrice()%>">
</div>
<input type="hidden" name="id" value = "<%=ex.getId()%>">
<button class = "btn btn-success col-md-12">Update</button></form></div></div></div></div></div>
</body>
</html>