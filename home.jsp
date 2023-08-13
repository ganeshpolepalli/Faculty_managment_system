<!DOCTYPE html>
<head>
<title>Faculty search Engine</title>
<style>
 body{
            background:url('1.jpg');
            background-repeat:no-repeat;
            background-size: cover;
            background-color: white;
            font-family:'Times New Roman', Times, serif;
            font-weight: 400;
            color:black;
        }
        #s1,#s2,#s3,#s4{
          border:none;
          outline:none;
        }
        h3{
          color:red;
        }
        button{
          align:center;
        }
           .contact{
               text-align:center ;
               background:blue;
            }
            .contact ul{
                display: inline-flex;
                list-style: none;
            }
           .contact ul li {
            width: 60px;
            margin:5px;
            padding:5px;
            }
            .contact ul li a{
                 text-decoration:none;
                 color:white;
                 font-size:20px;
            }.ani{
              font-size:40px;
              background:white;
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
#s{
  background:transparent;
  outline:none;
  border:none;
}
select{
    overflow:auto;
}
</style>
</head>
<body>
<div class="ani">
<center><b>
<span class="a">V</span>
<span class="b">I</span>
<span class="c">G</span>
<span class="d">N</span>
<span class="e">A</span>
<span class="f">N</span></b></center> </div>
<center>(Deemed to be UNIVERSITY)</center>
  <div class="contact">
    <ul><li><a href="home.jsp">Home</a></li>
        <li><a href="index.jsp">Profile</a></li>
        <li><a href="message.jsp">OnlineChat</a></li>&emsp;&emsp;
        <li><a href="leave.jsp">leave</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<h2 align="center">Faculty Search Engine </h2>
<form action="#">
<b>Faculty Id/Name:</b>&nbsp;&nbsp;<input type="text" name="First Name" id="name" onfocus="sec()" required>&emsp;
<input type="submit" value="Search" id="b">
<br>
<select name="s" id="s" size="15" onclick="ser()">
<%! String use,l;String s[]=new String[20];%>
<% use=request.getParameter("First Name");%>
<%@page import="java.sql.*"%>
<%! int f=0;%>
<%
l=session.getAttribute("login").toString();
session.setAttribute("login",l);
if(l.equals("logout")){
  response.sendRedirect("login.jsp");
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from faculty"); 
while(rs.next()){
  if(use.equals(rs.getString(2))||use.equals(rs.getString(1)))
 {
    session.setAttribute("First Name",use);
    response.sendRedirect("fac.jsp");
 }
}
if(f==0)
{
ResultSet res=stmt.executeQuery("select fid,fname from faculty where fname like '%"+use+"%' or fid like '%"+use+"%' order by fid ");
int i=0;
while(res.next())
 {
 out.print("<option>"+res.getString(1)+"</option>");
 }
}
con.close();
}
catch(Exception e){}
%>
</select>
</form>
<script type="text/javascript">
function sec(){
setTimeout("CallButton()",5000)
}
function CallButton()
{
   document.getElementById("b").click();   
}
function ser(){
 var s1=document.getElementById("s").value;
 document.getElementById("name").value=s1;
 document.getElementById("b").click(); 
}
</script>
</body>
</html>
