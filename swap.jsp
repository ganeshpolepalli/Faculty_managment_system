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
        <%@ page language="java" import="java.sql.*"%>
<%

    String fid= request.getParameter("FacultyId");

    String ss = request.getParameter("subject");
   
    String s =request.getParameter("Day");

    String id = request.getParameter("Period");
    try {

        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");
           Statement ps=con.createStatement();
switch(s)
{
case "1":
switch(id)
{
case "1":
ps.executeUpdate("update monday set mp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update monday set mp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update monday set mp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update monday set mp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update monday set mp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update monday set mp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update monday set mp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update monday set mp8='"+ss+"' where cfid='"+fid+"'");
break;
}
break;
case "2":
switch("1")
{
case "1":
ps.executeUpdate("update tuesday set tp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update tuesday set tp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update tuesday set tp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update tuesday set tp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update tuesday set tp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update tuesday set tp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update tuesday set tp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update tuesday set tp8='"+ss+"' where cfid='"+fid+"'");
break;
}
break;
case "3":
switch("1")
{
case "1":
ps.executeUpdate("update wednesday set tp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update wednesday set tp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update wednesday set tp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update wednesday set tp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update wednesday set tp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update wednesday set tp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update wednesday set tp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update wednesday set tp8='"+ss+"' where cfid='"+fid+"'");
break;
}
break;
case "4":
switch("1")
{
case "1":
ps.executeUpdate("update thrusday set tp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update thrusday set tp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update thrusday set tp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update thrusday set tp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update thrusday set tp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update thrusday set tp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update thrusday set tp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update thrusday set tp8='"+ss+"' where cfid='"+fid+"'");
break;
}
break;
case "5":
switch("1")
{
case "1":
ps.executeUpdate("update friday set tp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update friday set tp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update friday set tp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update friday set tp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update friday set tp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update friday set tp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update friday set tp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update friday set tp8='"+ss+"' where cfid='"+fid+"'");
break;
}
break;
case "6":
switch("1")
{
case "1":
ps.executeUpdate("update saturday set tp1='"+ss+"' where cfid='"+fid+"'");
break;
case "2":
ps.executeUpdate("update saturday set tp2='"+ss+"' where cfid='"+fid+"'");
break;
case "3":
ps.executeUpdate("update saturday set tp3='"+ss+"' where cfid='"+fid+"'");
break;
case "4":
ps.executeUpdate("update saturday set tp4='"+ss+"' where cfid='"+fid+"'");
break;
case "5":
ps.executeUpdate("update saturday set tp5='"+ss+"' where cfid='"+fid+"'");
break;
case "6":
ps.executeUpdate("update saturday set tp6='"+ss+"' where cfid='"+fid+"'");
break;
case "7":
ps.executeUpdate("update saturday set tp7='"+ss+"' where cfid='"+fid+"'");
break;
case "8":
ps.executeUpdate("update saturday set tp8='"+ss+"' where cfid='"+fid+"'");
break;
}
}
con.close();
    }
catch(Exception e)
        {
}
%>
<form action="#">
<div class="login-box">
  <h2>Swap</h2>
    <div class="user-box">
       Facultyid:
      <input type="text" name="FacultyId" required="">
    </div>

<div class="user-box">
       Section and Subject (section-subject):
      <input type="text" name="subject" required="">
    </div>
     <div class="a">
    <label> Day: </label>
<select name="Day">
<option value="Day">Day</option>
<option value="1">monday</option>
<option value="2">tuesday</option>
<option value="3">wednesday</option>
<option value="4">thursday</option>
<option value="5">friday</option>
<option value="6">saturday</option></select>
    <br><br><br></div>
<div class="a">
<label> Period: </label>
<select name="Period">
<option value="Period">Period</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
</select>
<br>
<br>
</div>

    <br>
    <br>
<button>Submit</button>
</div>
</form>
    </body>
</html>