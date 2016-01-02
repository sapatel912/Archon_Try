<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>State</title>
<script type="text/javascript">

	function redirect() {
		var cid = document.getElementById("cid");
		var sname = document.getElementById("sname");
		window.location = "delState?sname="+sname.value+"&cid="+cid.value;
	}


</script>
</head>
<body>
	<form action="addState" method="get">
		<table>
		<tr>
			<td>
			Country Id:
			</td>
			<td><input type="text" id = "cid" name = "cid"></input></td>
		</tr>
		<tr>
			<td>
			State Name:
			</td>
			<td><input type="text" id = "sname" name = "sname"></input></td>
		</tr>
		<tr>
		<td><input type="submit" value = "Add"></input></td>
		<td><input type="button" value = "Delete" onclick="redirect()"></input></td>
		</tr>
	</table>
	
	
	</form>
</body>
</html>