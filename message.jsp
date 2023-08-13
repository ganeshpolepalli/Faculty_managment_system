<html>
<% String l=session.getAttribute("login").toString();
session.setAttribute("login",l);
if(l.equals("logout")){
  response.sendRedirect("login.jsp");
}
%>
<frameset rows="86%,7%,*" border="0">
<frame src="mess.jsp" name="f1">
<frame src="mess1.jsp" name="f2">
<frame src="mess2.jsp" name="f2">
</frameset>
</html>