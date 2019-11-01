<%@ page import="java.util.*" %>
<html>
<head>
<title>Http Request Headers Example</title>
</head>
<body>
<h2>HTTP Request Headers Received</h2>
<table>
<%
String value = request.getHeader("user-agent");
%>
<tr><td>user-agent: </td><td><%= value %></td></tr>
</table>
</body>
</html>