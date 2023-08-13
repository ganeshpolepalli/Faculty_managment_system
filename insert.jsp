<!DOCTYPE html>
<html>
<head> 
	<style>
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
String dob=request.getParameter("dob");
try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/uni","root","root");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into student values('"+id+"','"+n+"','"+g+"','"+dob+"','"+p+"')");
           conn.close();
            }
catch(Exception e)
{
System.out.print(e);
}
 %>
<form action="#" name="form">
 <div class="login-box">
    <div class="user-box">
       Name:
      &emsp;&emsp;&emsp;<input type="text" name="n" pattern=".{3,16}"  title="must contain 3 to 16 Characters Only" required="">
    </div>
    <div class="user-box">
      Student Id:
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
      <input type="text" name="p" required="">
    </div>
    <div class="h">
    <br>
    Date of birth:
    <input type="date" name="dob" required="" style="background:skyblue;">
    </div>
    <br><br>
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
 <button type="submit" onclick="al()">Submit</button>
 <br>
 <br>
 </form>
 </div>  
</body>
</html>