<html>
<head>
</head>
<body>
<%!String l;%>
<%
l=session.getAttribute("login").toString();
l="logout";
session.setAttribute("login",l);
response.sendRedirect("login.jsp");
%>
</body>
</html>