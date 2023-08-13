<html>
<head>
<style>
button{
    background:black;
    color:yellow;
    font-size:30px;
}
button a{
   color:yellow;
   text-decoration:none;
}

body {
    background-image:url('1.jpg') ;
    background-repeat:no-repeat;
    background-size: cover;
    font-weight: 400;
    background:white;
    color:black;
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
            }
.login-box {
  position: fixed;
  top: 30%;
  left: 10%;
  width: 170px;
  padding: 15px;
  transform: translate(-50%, -50%);
  background: black;
  box-sizing: border-box;
  border-radius: 10px;
}
.login-bo {
  position: fixed;
  top: 45%;
  left: 10%;
  width: 170px;
  padding: 15px;
  padding-left:30px;
  transform: translate(-50%, -50%);
  background: black;
  box-sizing: border-box;
  border-radius: 10px;
}
b{
    padding-top:30px;
    padding-left:250px;
}
.ani{
    position:fixed;
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
</style>
</head>
<body>
<div class="ani">
<span class="a">V</span>
<span class="b">I</span>
<span class="c">G</span>
<span class="d">N</span>
<span class="e">A</span>
<span class="f">N</span></div><br><br>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(Deemed to be UNIVERSITY)
  <div class="contact">
    <ul><li><a href="home.jsp">Home</a></li>
        <li><a href="index.jsp">Profile</a></li>
        <li><a href="message.jsp">OnlineChat</a></li>&emsp;&emsp;
        <li><a href="leave.jsp">leave</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<br>
<%@page import="java.sql.*"%>
<%! String n,i,l;%>
<%l=session.getAttribute("login").toString();
session.setAttribute("login",l);
if(l.equals("logout")){
  response.sendRedirect("login.jsp");
}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from leav order by dat desc"); 
while(rs.next()){
out.write("<br><b>Name:</b>&emsp;"+rs.getString(1));
out.write("<br><b>Id:</b>&emsp;"+rs.getString(2));
out.write("<br><b>Date:</b>&emsp;"+rs.getString(3));
out.write("<br><b>Purpose:</b>"+rs.getString(4));
out.write("<br><b>From date:</b>"+rs.getString(5));
out.write("<br><b>To date:</b>"+rs.getString(6));
out.write("<br><b>--------------------------------------------------------------------------------------------------</b><br>");
}
con.close();
}
catch(Exception e){}
%>
<a href="compose.jsp">
<div class="login-box">
<button>Compose</button><br>
</div></a>
<a href="swap.jsp"><div class="login-bo">
<button>Swap</button><br>
</div></a>
</body>
</html>