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
            color:black;
        }
        button{
          background-color: aqua;
          padding: 5px;
        }
        input{
          font-weight:500;
          font-size:16px;
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
<%! String use,pass,l;%>
<%
pass=session.getAttribute("fid").toString();
l=session.getAttribute("login").toString();
session.setAttribute("login",l);
if(l.equals("logout")){
  response.sendRedirect("login.jsp");
}%>
<%@page import="java.sql.*"%>
<%!String name,dob,pno,qua,de,gen,id,pas; %>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from faculty"); 
while(rs.next()){
  if(pass.equals(rs.getString(1)))
 {
     id=rs.getString(1);
     name=rs.getString(2);
     gen=rs.getString(3);
     dob=rs.getString(4);
     pno=rs.getString(5);
     qua=rs.getString(6);
     de=rs.getString(7);
     use=rs.getString(8);
     pas=rs.getString(9);
 }
}
con.close();
}
catch(Exception e){}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement st=c.createStatement();
 String n=request.getParameter("n");
String p=request.getParameter("p");
String q=request.getParameter("q");
String u=request.getParameter("u");
String pa=request.getParameter("pa");
if(n.equals("null")||p.equals("null")||q.equals("null")||u.equals("null")||p.equals("null")){
}
else{
st.executeUpdate("update faculty set fname='"+n+"' where fid='"+id+"'");
st.executeUpdate("update faculty set fpno='"+p+"' where fid='"+id+"'");
st.executeUpdate("update faculty set Qualification='"+q+"' where fid='"+id+"'");
st.executeUpdate("update faculty set uname='"+u+"' where fid='"+id+"'");
st.executeUpdate("update faculty set pass='"+pa+"' where fid='"+id+"'");
response.sendRedirect("index.jsp");
}
c.close();
}
catch(Exception m){
    System.out.print(m);
}
%> <form action="#"> 
<div class="info">
 <b><br><br>
   &emsp;&emsp;&emsp;&emsp;Name:&emsp;&emsp;&emsp;&emsp;<input type="text" pattern=".{3,16}"  title="must contain 3 to 16 Characters Only" name="n" value="<%=name%>"required>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Phone No: &emsp;&emsp;<input type="text" pattern=".{10,10}"  title="must contain 10 digits" name="p" value="<%=pno%>" required>
  <br>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Qualification:&ensp;&nbsp;<input type="text" name="q" value="<%=qua%>"required>
  <br>
  <br>
  <br>
   &emsp;&emsp;&emsp;&emsp;Username:&emsp;&emsp;<input type="text"  name="u" value="<%=use%>" required>
  <br>
  <br>
  <br>
   &emsp;&emsp;&emsp;&emsp;Password:&emsp;&emsp;<input type="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}" title="Must contain at least one number,uppercase,lowercase letter,special character and at least 8 to 16 characters" name="pa" value="<%=pas%>" required>
    <br>
    <center><button onClick="refresh()">Submit</button></center>
    </b>
    </div>
    <form>
    <script>
function refresh(){
    window.location.reload();
} 
</body>
</html>