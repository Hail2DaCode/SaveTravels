<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Expense</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="super">
		<div class = "row" id = "heading">
			<h1 class="header">Expense Details</h1>
			<p class="rowBot"><a href= "/expenses">Go back</a>
		</div>
		<div class = "row" id = "row1">
			<p class = "rowTop">Expense Name:</p>
			<p class= "rowBot"><c:out value="${expense.name }"/></p>
		</div>
		<div class = "row" id = "row2">
			<p class="rowTop">Expense Description:</p>
			<p class="rowBot"><c:out value="${expense.description }"/></p>
		</div>
		<div class = "row" id = "row3">
			<p class="rowTop">Vendor:</p>
			<p class="rowBot"><c:out value="${expense.vendor }"/></p>
		</div>
		<div class = "row" id = "row4">
			<p class="rowTop">Amount Spent:</p>
			<p class="rowBot"><c:out value="${expense.amount }"/></p>
		</div>
	</div>
</body>
</html>