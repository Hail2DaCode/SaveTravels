<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Travels</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div class="super">
	<h1>Save Travels</h1>
	<table>
		<thead>
			<tr>
				<th>Expense</th>
				<th>Vendor</th>
				<th>Amount</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var = "expense" items = "${ expenses }">
			<tr>
				<td><a href="/expenses/${expense.id }"><c:out value="${ expense.name}"/></a></td>
				<td><c:out value="${ expense.vendor}"/></td>
				<td>$<c:out value="${ expense.amount}"/></td>
				<td class="actionDelete">
				<a class="link" href="/expenses/edit/${ expense.id }">Edit</a>
				<form class = "form" action="/expenses/${expense.id}" method="post">
    			<input type="hidden" name="_method" value="delete">
    			<input class = "btn" id = "btn2" type="submit" value="Delete">
				</form>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<h2>Add an Expense:</h2>
	<form:form class="form" action="/new/Expense" method = "post" modelAttribute="expense">
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