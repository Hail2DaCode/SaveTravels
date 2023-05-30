<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Expense</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="super">
		<h2>Edit Expense</h2>
		<a href="/expenses">Go Back</a>
	<form:form class="form" action="/expenses/${expense.id }" method = "post" modelAttribute="expense">
	<input type = "hidden" name = "_method" value = "put">
		<div class="add" id = "add1">
			<form:label path="name">Expense Name:</form:label>
			<form:errors class="error" path = "name"/>
			<form:input path="name"/>
		</div>
		<div class="add" id = "add2">
			<form:label path="vendor">Vendor:</form:label>
			<form:errors class="error" path = "vendor"/>
			<form:input path="vendor"/>
		</div>
		<div class="add" id = "add3">
			<form:label path="amount">Amount:</form:label>
			<form:errors class="error" path = "amount"/>
			<form:input path="amount"/>
		</div>
		<div class="add" id = "add4">
			<form:label path="description">Description:</form:label>
			<form:errors class="error" path = "description"/>
			<form:input path="description"/>
		</div >
		<div class = "add" id = "add5">
			<input class="btn" id ="submit" type = "submit" value="Submit"/>
		</div>
	</form:form>
	</div>
</body>
</html>