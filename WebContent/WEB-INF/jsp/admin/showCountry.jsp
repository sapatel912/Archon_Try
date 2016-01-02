<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Country</title>
</head>
<body>
	<form action = "editCountry" method = "get">
	<table border = 1px style =  "border:1px solid black ; border-spacing:0px ">
	<tr>
		<td>Country ID</td>
		<td>Country Name</td>
		<td>State ID</td>
		<td>State Name</td>
	</tr>
	<c:forEach var="x" items="${ctryls}" varStatus="i">
		<tr>
			<td>${x.countryID}</td>
			<td>${x.countryName}</td>
			<td>${x.stateID}</td>
			<td>${x.stateName}</td>
		<%-- 	<td><input type = "button" value = "EDIT States" onclick="document.location.href='editState?cid=${x.countryID}';"></td> --%>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="3"><input type = "submit" value = "Edit Country"></input></td>
		<td colspan="2"><input type = "button" value = "EDIT States" onclick="document.location.href='editState';"></td>
	</tr>
	</table>
	</form>
</body>
</html>