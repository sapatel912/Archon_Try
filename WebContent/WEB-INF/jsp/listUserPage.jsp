<%@page import="java.util.Iterator"%>
<%@page import="com.archon.domain.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of all users</title>
</head>
<body>
	<table border="1">
	<%
		List<User> listUser = (List<User>) request.getAttribute("listUser");
		User user;
		
		for(int i = 0; i < listUser.size(); i ++) {
			user = listUser.get(i);
	%>
		
			<tr>
				<td>
					<%=user.getUserId() %>
				</td>
				<td>
					<%=user.getFullName() %>
				</td>
				<td>
					<%=user.getInitial() %>
				</td>
				<td>
					<%=user.getContactNo() %>
				</td>
				<td>
					<%=user.getGender() %>
				</td>
				<td>
					<%=user.getPhotoPath() %>
				</td>
				<td>
					<%=user.getBio() %>
				</td>
				<td>
					<%=user.getCountryId() %>
				</td>
				<td>
					<%=user.getLoginId()%>
				</td>
			</tr>
		 
	<%
		}
	%>
	</table>
</body>
</html>