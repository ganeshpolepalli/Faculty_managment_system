<html>
<head>
<style>
*{
margin:0;
}
button{
    border-radius:10px;
    font-size:20px;
    width:250px;
}
button:hover{
background:skyblue;
}
div{
    text-align: right;
    padding-right:10px;
    color:yellow;
}
body{
     background:url('1.jpg');
            background-repeat:no-repeat;
            background-size: cover;
            background-color: black;
            color:white;
}
sup{
    color:red;
}
                        .ani{
              position:fixed;
              font-size:35px;
              background:black;
              width:100%;
            }
            .a{
animation:blink 1s infinite;
}
.b{
animation:blink 2s infinite;
}
.c{
animation:blink 3s infinite;
}
.d{
animation:blink 4s infinite;
}
.e{
animation:blink 5s infinite;
}
.f{
animation:blink 6s infinite;
}
@keyframes blink{
34%{   color: red;   }
67%{   color:green;   }
100%{   color:blue; }
}
</style>
</head>
<body>
 <div class="ani">
 <input type="image" src="b.png"width="100" height="100" onclick="history.back()" >
<b><marquee direction="right">
<span class="a">V</span>
<span class="b">I</span>
<span class="c">G</span>
<span class="d">N</span>
<span class="e">A</span>
<span class="f">N</span></marquee></b></div>
<br><br><br><br><br><br><br><br><br>
<%@page import="java.sql.*"%>
<%!String id,l;%>
<% String use=request.getParameter("t");
String del=request.getParameter("d");%>
<%
 id=session.getAttribute("id").toString();
 int count=0;
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stm=co.createStatement();
 ResultSet res=stm.executeQuery("select count(*) from message"); 
while(res.next()){
count=res.getInt(1);
}
if(use.equals("null")){
}
else{
stm.executeUpdate("insert into message values('"+id+"','"+use+"','"+count+"')");
}
co.close();
}
catch(Exception m){
    System.out.print(m);
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement st=c.createStatement(); 
if(del.equals("null")){
}
else{
st.executeUpdate("update message set mess='message deleted' where mid='"+del+"'and fid='"+id+"'");
}
c.close();
}
catch(Exception m){
    System.out.print(m);
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement(); 
ResultSet rs=stmt.executeQuery("select * from message"); 
while(rs.next()){
    if(id.equals(rs.getString(1))){
        String x=rs.getString(2);
        out.print("<div><button><b>"+x+"</b></button><sub>"+rs.getString(3)+"</sub></div>");
    }
    else{
    String y=rs.getString(2);
    out.print("<br><button><sup>"+rs.getString(1)+"</sup><br><b>"+y+"</b></button>");
    }
}
}
catch(Exception e){
    System.out.print(e);
}
%>
</body>
</html>