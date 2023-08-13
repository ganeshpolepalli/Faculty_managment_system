<html>
<head>
    <meta varchar="UTF-8">
  <meta name="viewport" content="width=device-width,intial-scale=1">
<style>
*{
padding-left:5px;
}
body{
background-color:#fcbb51;
}
h2{
color:red;
}
#res{
  background-color:rgb(85, 176, 252);
}
button{
  background-color:rgb(71, 71, 203);
}
</style>
</head>
<body>
<%@page import="java.sql.*"%>
<%
String fid=request.getParameter("f");
String m1=request.getParameter("m1");
String m2=request.getParameter("m2");
String m3=request.getParameter("m3");
String m4=request.getParameter("m4");
String m5=request.getParameter("m5");
String m6=request.getParameter("m6");
String m7=request.getParameter("m7");
String m8=request.getParameter("m8");
String t1=request.getParameter("t1");
String t2=request.getParameter("t2");
String t3=request.getParameter("t3");
String t4=request.getParameter("t4");
String t5=request.getParameter("t5");
String t6=request.getParameter("t6");
String t7=request.getParameter("t7");
String t8=request.getParameter("t8");
String w1=request.getParameter("w1");
String w2=request.getParameter("w2");
String w3=request.getParameter("w3");
String w4=request.getParameter("w4");
String w5=request.getParameter("w5");
String w6=request.getParameter("w6");
String w7=request.getParameter("w7");
String w8=request.getParameter("w8");
String th1=request.getParameter("th1");
String th2=request.getParameter("th2");
String th3=request.getParameter("th3");
String th4=request.getParameter("th4");
String th5=request.getParameter("th5");
String th6=request.getParameter("th6");
String th7=request.getParameter("th7");
String th8=request.getParameter("th8");
String f1=request.getParameter("f1");
String f2=request.getParameter("f2");
String f3=request.getParameter("f3");
String f4=request.getParameter("f4");
String f5=request.getParameter("f5");
String f6=request.getParameter("f6");
String f7=request.getParameter("f7");
String f8=request.getParameter("f8");
String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");
String s6=request.getParameter("s6");
String s7=request.getParameter("s7");
String s8=request.getParameter("s8");
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement ps=con.createStatement();  
ps.executeUpdate("update monday set mp1='"+m1+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp2='"+m2+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp3='"+m3+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp4='"+m4+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp5='"+m5+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp6='"+m6+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp7='"+m7+"' where cfid='"+fid+"'");
ps.executeUpdate("update monday set mp8='"+m8+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp1='"+t1+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp2='"+t2+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp3='"+t3+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp4='"+t4+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp5='"+t5+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp6='"+t6+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp7='"+t7+"' where cfid='"+fid+"'");
ps.executeUpdate("update tuesday set tp8='"+t8+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp1='"+w1+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp2='"+w2+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp3='"+w3+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp4='"+w4+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp5='"+w5+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp6='"+w6+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp7='"+w7+"' where cfid='"+fid+"'");
ps.executeUpdate("update wednesday set tp8='"+w8+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp1='"+th1+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp2='"+th2+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp3='"+th3+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp4='"+th4+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp5='"+th5+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp6='"+th6+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp7='"+th7+"' where cfid='"+fid+"'");
ps.executeUpdate("update thrusday set tp8='"+th8+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp1='"+f1+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp2='"+f2+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp3='"+f3+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp4='"+f4+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp5='"+f5+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp6='"+f6+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp7='"+f7+"' where cfid='"+fid+"'");
ps.executeUpdate("update friday set tp8='"+f8+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp1='"+s1+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp2='"+s2+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp3='"+s3+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp4='"+s4+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp5='"+s5+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp6='"+s6+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp7='"+s7+"' where cfid='"+fid+"'");
ps.executeUpdate("update saturday set tp8='"+s8+"' where cfid='"+fid+"'");
con.close();
}
catch(Exception e){}
%> 
<h1><center>VIGNAN (Deemed to be UNIVERSITY)</center></h1>
<form action="#">
<b>Faculty Id:</b>
<input type="text" name="f">
<h2>Monday</h2>
period 1
<input type="text" name="m1">
period 2
<input type="text"  name="m2">
period 3
<input type="text"  name="m3">
period 4
<input type="text" name="m4">
<br>
period 5
<input type="text" name="m5">
period 6
<input type="text" name="m6">
period 7
<input type="text" name="m7">
period 8
<input type="text" name="m8">
<h2>Tuesday</h2>
period 1
<input type="text" name="t1">
period 2
<input type="text" name="t2">
period 3
<input type="text" name="t3">
period 4
<input type="text" name="t4">
<br>
period 5
<input type="text" name="t5">
period 6
<input type="text" name="t6">
period 7
<input type="text" name="t7">
period 8
<input type="text" name="t8">
<h2>Wednesday</h2>
period 1
<input type="text" name="w1">
period 2
<input type="text" name="w2">
period 3
<input type="text" name="w3">
period 4
<input type="text" name="w4">
<br>
period 5
<input type="text" name="w5">
period 6
<input type="text" name="w6">
period 7
<input type="text" name="w7">
period 8
<input type="text" name="w8">
<h2>Thrusday</h2>
period 1
<input type="text" name="th1">
period 2
<input type="text" name="th2">
period 3
<input type="text" name="th3">
period 4
<input type="text" name="th4">
<br>
period 5
<input type="text" name="th5">
period 6
<input type="text" name="th6">
period 7
<input type="text" name="th7">
period 8
<input type="text" name="th8">
<h2>Friday</h2>
period 1
<input type="text" name="f1">
period 2
<input type="text" name="f2">
period 3
<input type="text" name="f3">
period 4
<input type="text" name="f4">
<br>
period 5
<input type="text" name="f5">
period 6
<input type="text" name="f6">
period 7
<input type="text" name="f7">
period 8
<input type="text" name="f8">
<h2>Saturday</h2>
period 1
<input type="text" name="s1">
period 2
<input type="text" name="s2">
period 3
<input type="text" name="s3">
period 4
<input type="text" name="s4">
<br>
period 5
<input type="text" name="s5">
period 6
<input type="text" name="s6">
period 7
<input type="text" name="s7">
period 8
<input type="text" name="s8">
<br>
<br>
<center>
<button type="submit" style="font-size:20px;">Submit</button>
</center>
</form>
</body>
</html>

