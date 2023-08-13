<!DOCTYPE html>
<html>
<head> 
	<style>
  body {
    margin:0;
    padding:0;
    font-family: sans-serif;
    background-image:url('0.jpg');
    background-repeat:no-repeat;
    background-size: cover;
    background-color: rgb(109, 106, 106);
    font-family:'Times New Roman', Times, serif;
    font-weight: 400;
  }
 .login-box {
  position: absolute;
  top: 50%;
  left: 20%;
  width: 400px;
  padding-left:50px;
  transform: translate(-50%, -50%);
  background: rgba(0, 0, 0, 0.973);
  box-sizing: border-box;
  border-radius: 10px;
 }

 .login-box h2 {
  color: rgb(227, 241, 22);
  text-align: center;
  padding-right:30px;
 }
 .login-box .user-box {
  position: relative;
 }
 .login-box .user-box input {
  width: 50%;
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
 .h{
  color: white;
 }
 .login-box .user-box{
  color:white;
 }
  button a{
    text-decoration:none;
    color:#03e9f4;
 }
 </style>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String n=request.getParameter("n");
String id=request.getParameter("id");
String g=request.getParameter("g");
String p=request.getParameter("p");
String q=request.getParameter("q");
String d=request.getParameter("d");
String u=request.getParameter("u");
String pa=request.getParameter("pa");
String dob=request.getParameter("dob");
try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into faculty(fid,fname,gender,fdob,fpno,Qualification,department,uname,pass)values('"+id+"','"+n+"','"+g+"','"+dob+"','"+p+"','"+q+"','"+d+"','"+u+"','"+pa+"')");
          st.executeUpdate("insert into monday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
          st.executeUpdate("insert into tuesday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
          st.executeUpdate("insert into wednesday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
          st.executeUpdate("insert into thrusday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
          st.executeUpdate("insert into friday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
          st.executeUpdate("insert into saturday values('"+id+"','*','*','*','*','*','*','*','*','"+id+"')");
           response.sendRedirect("login.jsp");
            }
catch(Exception e)
{
System.out.print(e);
}
 %>
<form action="#" name="form">
 <div class="login-box">
 <h2>Register</h2>
    <div class="user-box">
       Name:
      &emsp;&emsp;&emsp;<input type="text" name="n" pattern=".{3,16}"  title="must contain 3 to 16 Characters Only" required="">
    </div>
    <div class="user-box">
      Faculty Id:
      &ensp;&emsp;<input type="text" name="id" required="">
    </div>
    <div class="h">
    Gender:&emsp;&emsp;&emsp;
 <select name="g" required="">
 <option value="">Select</option>
 <option value="MALE">MALE</option>
 <option value="FEMALE">FEMALE</option>
 </select>
 <br><br>
    </div>
    <br>
    <div class="user-box">
      Phone no:&emsp;&emsp;
      <input type="text" name="p" pattern=".{10,10}"  title="must contain 10 digits" required="">
    </div>
    <div class="h">
    <br>
    Date of Joining:
    <input type="date" name="dob" required="" style="background:skyblue;">
    </div>
    <br><br>
    <div class="user-box">
       Qualification:
      &ensp; <input type="text" name="q" pattern=".{3,16}"  title="must contain 3 to 16 Characters Only" required="">
    </div>
    <div class="user-box">
      Department:&emsp;&ensp;
      <select name="d" required>
      <option value="">Select</option>
      <option value="CSE">CSE</option>
      <option value="ECE">ECE</option>
      <option value="EEE">EEE</option>
      <option value="MEACH">MEACH</option>
      <option value="CIVIL">CIVIL</option>
      </select>
      <br><br><br>
    </div>
    <div class="user-box">
      Username:&emsp;&emsp;
      <input type="text" name="u" pattern=".{6,18}"  title="must contain 6 to 18 characters" required="">
    </div>
    <div class="user-box">
       Password:&emsp;&emsp;
      <input type="password" name="pa" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}" title="Must contain at least one number,uppercase,lowercase letter,special character and at least 8 to 16 characters" required>
    </div>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
 <button type="submit" onclick="al()">Submit</button>
 <br>
 <br>
 </form>
 </div>  
</body>
<script>
 function al() {
  var N=document.form.n.value;
  var ID=document.form.id.value;
  var G=document.form.g.value;
  var P=document.form.p.value;
  var DOB=document.form.dob.value;
  var Q=document.form.q.value;
  var D=document.form.d.value;
  var U=document.form.u.value;
  var PA=document.form.pa.value;
  var a=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
  if((PA.match(a)))
  {
  alert("Your Account is Ready please login");
  return true;
  }
 }
</script>
</html>