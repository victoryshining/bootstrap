<%@ page import="java.util.*" %>
<html>
<head>
<title>Http Request Headers Example</title>
</head>
<body>
<h2>HTTP Request Headers Received</h2>
<table>
<%
Enumeration enumeration = request.getHeaderNames();
while (enumeration.hasMoreElements()) {
String name = (String) enumeration.nextElement();
String value = request.getHeader(name);
%>
<tr><td><%= name %></td><td><%= value %></td></tr>
<%
}
%>
</table>
</body>
</html>