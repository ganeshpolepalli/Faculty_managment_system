<!DOCTYPE html>
<html>
<head>
<style>
  body {
  margin:0;
  padding:0;
  background:url('0.jpg');
  background-repeat:no-repeat;
  background-size: cover;
  background-color: rgb(253, 253, 104);
}

.login-box {
  position: absolute;
  top: 30%;
  left: 14%;
  width: 250px;
  padding: 30px;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  background-color: rgba(253, 246, 246, 0.363);
  border-radius: 10px;
}
b{
    color:red;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: rgb(10, 10, 10);
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: rgb(15, 15, 15);
  margin-bottom: 20px;
  border: none;
  border-bottom: 1px solid rgb(10, 10, 10);
  outline: none;
  background: transparent;
}
button{
  background-color:#2dabe3;
  padding:8px;
  border-radius: 5px;
  font-family:sans-serif;
  font-weight: 600;
}
button a{
 text-decoration:none;
 color:black;
}
.login-box .user-box{
  color:rgb(8, 8, 8);
  font-weight: 600;
}
h1{
  color:black;
}
</style>
</head>
<body>
<center><h1>Faculty Management System</h1></center>
<div class="login-box">
  <h2>Faculty Login</h2>
  <form action="#">
    <div class="user-box">
    <%! String use,pass,fid,l="login";%>
<% use=request.getParameter("Username");
pass=request.getParameter("password");%>
<%@page import="java.sql.*"%>
<%! int f=0;%>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet res=stmt.executeQuery("select * from admi");
while(res.next()){
if(use.equals(res.getString(2))&& pass.equals(res.getString(3))){
       response.sendRedirect("admin.jsp");
}
}
ResultSet rs=stmt.executeQuery("select * from faculty"); 
while(rs.next()){
  if(use.equals(rs.getString(8)) && pass.equals(rs.getString(9)))
 {
    fid=rs.getString(1);
     session.setAttribute("fid",fid);
     session.setAttribute("login",l);
     response.sendRedirect("index.jsp");
 }
}
if(f==0)
{
      out.write("<b>Wrong Username/Password</b>");
}
con.close(); 
}
catch(Exception e){}
%>  
      Username:
      <input type="text" name="Username" pattern=".{6,18}"  title="must contain 6 to 18 characters" required="">
      Password:
      <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}" title="Must contain at least one number,uppercase,lowercase letter,special character and at least 8 to 16 characters" required="">
    </div>
    <button type="submit">LOGIN</button>
    &emsp;&emsp;<button><a href="reg1.jsp">REGISTER</a></button>
  </form>
</div>
</body>
</html>
