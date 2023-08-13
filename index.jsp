<html>
<head>
<style>
        body{
            background:url('1.jpg');
            background-repeat:no-repeat;
            background-size: cover;
            background-color: white;
            font-family:'Times New Roman', Times, serif;
            font-weight: 400;
            font-size:18px;
            color:black;
        }
        .img{
 position: absolute;
  top: 40%;
  left: 70%;
  width: 250px;
  height:250px;
  box-sizing: border-box;
  background-color:#e2fc1c;
  border-radius: 10px;
        }
        button{
          font-size:20px;
          background-color:orange;
          padding: 5px;
          border-radius:10px;
        }
        input{
          background:transparent;
          border:none;
          outline:none;
          font-weight:500;
          font-size:18px;
          color:red;
        }
        .info{
          padding:10px;
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
            a{
              font-size:20px;
            }
            .ani{
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
<%! String fid,l;%>
<% fid=session.getAttribute("fid").toString();
session.setAttribute("fid",fid);
l=session.getAttribute("login").toString();
session.setAttribute("login",l);
if(l.equals("logout")){
  response.sendRedirect("login.jsp");
}%>
<%@page import="java.sql.*"%>
<%!String name,dob,pno,qua,dep,gen,id; %>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from faculty"); 
while(rs.next()){
  if(fid.equals(rs.getString(1)))
 {
     id=rs.getString(1);
     name=rs.getString(2);
     gen=rs.getString(3);
     dob=rs.getString(4);
     pno=rs.getString(5);
     qua=rs.getString(6);
     dep=rs.getString(7);
 }
}
con.close();
}
catch(Exception e){}
session.setAttribute("id",id);
%> 
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
        <li><a href="index.jsp" name="f4">Profile</a></li>
        <li><a href="message.jsp">OnlineChat</a></li>&emsp;&emsp;
        <li><a href="leave.jsp">leave</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<marquee>Welcome to Profile</marquee>
<div class="img">
 <img src="hi.png" width="250" height="250">
</div>
<div class="info">
 <b>
 <br>
 <br>
   &emsp;&emsp;&emsp;&emsp;Name:&emsp;&emsp;&emsp;&emsp;<input type="text" value="<%=name%>" readonly>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Faculty Id:&emsp;&emsp;<input type="text" value="<%=id%>" readonly>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Phone No: &emsp;&emsp;<input type="text" value="<%=pno%>"readonly>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Gender:&emsp;&ensp;&emsp;&ensp;&nbsp;<input type="text" value="<%=gen%>" readonly>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Date of Joining:<input type="text" value="<%=dob%>"readonly>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Department:&emsp;&nbsp;<input type="text" value="<%=dep%>" readonly>
  <br>
  <br><br>
  &emsp;&emsp;&emsp;&emsp;Qualification:&ensp;&nbsp;<input type="text" value="<%=qua%>" readonly>
  <br>
  <br>
  <br>
   Here you can edit your Profile <a href="edit.jsp">Edit</a>
    </b>
    </div>
</body>
</html>