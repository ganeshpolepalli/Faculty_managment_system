<!DOCTYPE html>
<html>
<head>
	<style>
  body {
    margin:0;
    padding:0;
    font-family: sans-serif;
    background-image:url('0.jpg') ;
    background-repeat:no-repeat;
    background-size: cover;
    background-color: rgb(109, 106, 106);
    font-family:'Times New an', Times, serif;
    font-weight: 400;
  }
.login-box {
  position: absolute;
  top: 50%;
  left: 40%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0, 0, 0, 0.973);
  box-sizing: border-box;
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: rgb(227, 241, 22);
  text-align: center;
}
.login-box .user-box {
  position: relative;
}
.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background:transparent;
}
button{
  background: transparent;
  color:#03e9f4;
  font-size: 16px;
  border: none;
}
.h input{
  color: white;
  background:transparent;
  width: 40%;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  padding: 5px 0;
  font-size: 16px;
  color: #fff;
}
.h,.a{
    color:#fff;
}
.login-box .user-box{
  color:white;
}
  button{
    color:#03e9f4;
    font-size: 16px;
    border: none;
  }
  .login-box .user-box{
    color:white;
  }
</style>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String n=request.getParameter("n");
String id=request.getParameter("id");
String d=request.getParameter("d");
String p=request.getParameter("p");
String fd=request.getParameter("fd");
String td=request.getParameter("td");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into leav(fname,fid,dat,purpose,fdate,tdate)values('"+n+"','"+id+"','"+d+"','"+p+"','"+fd+"','"+td+"')");
           response.sendRedirect("leave.jsp");
            }
catch(Exception e)
{
System.out.print(e);
}
 %>
<form action="#">
<div class="login-box">
  <h2>Compose</h2>
    <div class="user-box">
       Name:
      <input type="text" name="n" required="">
    </div>
    <div class="user-box">
      Faculty Id:
      <input type="text" name="id" required="">
    </div>
    <div class="a">
       Date:
    <input type="date" name="d" required="">
    <br>
    <br>
    <br>
    </div>
    <div class="user-box">
      Purpose:
      <input type="text" name="p" required="">
    </div>
    <div class="a">
      From which date to which date:<br><br>
    <input type="date" name="fd" required="">
    &emsp;<b>to</b>
    &emsp;<input type="date" name="td" required="">
    </div>
    <br>
    <br>
<button>Submit</button>
</div>
</form>
</body>
</html>