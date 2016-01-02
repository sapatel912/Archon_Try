<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Country</title>
<script type = "text/javascript">
	
	function redirect() {
		
		var cname = document.getElementById("cname");
		window.location = "delCountry?cname="+cname.value;
	}
	
</script>
</head>
<body>
	<form action="addCountry" method = "get">
	
	<table>
		<tr>
			<td>
			Country Name:
			</td>
			<td><input type="text" id = "cname" name = "cname"></input></td>
		</tr>
		<tr>
		<td><input type="submit" value = "Add"></input></td>
		<td><input type="button" value = "Delete" onclick="redirect()"></input>
		</tr>
	</table>
	
	</form>
</body>
</html>