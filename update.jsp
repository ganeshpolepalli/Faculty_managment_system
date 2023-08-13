<html>
<head>
<style>
    </style>
    </head>
<body>
<form action="#">
  Student Id:
      &ensp;&emsp;<input type="text" name="id" required=""><button>SET</button><br></form>
<%@page import="java.sql.*"%>
<%!String name,dob,pno,qua,de,gen,pas; %>
<%
 String id=request.getParameter("id");
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/uni","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from student"); 
while(rs.next()){
  if(id.equals(rs.getString(1)))
 {
     name=rs.getString(2);
     gen=rs.getString(3);
     dob=rs.getString(4);
     pno=rs.getString(5);

 }
}
con.close();
}
catch(Exception e){}
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/uni","root","root");  
Statement st=c.createStatement();
 String n=request.getParameter("n");
String p=request.getParameter("p");
String g=request.getParameter("g");
String dob=request.getParameter("dob");
if(n.equals("null")||p.equals("null")||id.equals("null")||g.equals("null")||dob.equals("null")){
}
else{
st.executeUpdate("update student set sname='"+n+"' where sid='"+id+"'");
st.executeUpdate("update student set fpno='"+p+"' where sid='"+id+"'");
st.executeUpdate("update student set gender='"+g+"' where sid='"+id+"'");
st.executeUpdate("update student set fdob='"+dob+"' where sid='"+id+"'");
}
c.close();
}
catch(Exception m){
    System.out.print(m);
}
%> <form action="#"> 
<div class="info">
 <b><br><br>
Name:&emsp;&emsp;&emsp;&emsp;<input type="text"  name="n" value="<%=name%>" required>
  <br> <br><br>
       Gender:&emsp;&emsp;&emsp;
 <input type="text" name="g" required="" value="<%=gen%>">
 <br><br><br>
 <input type="hidden" name="id" required="" readonly value="<%=id%>">
 Phone No:&ensp;&emsp;
 <input type="text" pattern=".{10,10}"  title="must contain 10 digits" name="p"  value="<%=pno%>" required>
  <br>
  <br>
  <br>
    Date of birth:
    <input type="date" name="dob" required=""  value="<%=dob%>">
    <br>
    <a href="update.jsp"><center><button>Update</button></center></a>
    </b>
    </div>
    <form> 
</body>
</html>