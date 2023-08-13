<form action="#">
  Student Id:
      &ensp;&emsp;<input type="text" name="id" required=""><button>DELETE</button><br></form>
<%@page import="java.sql.*"%>
<%
 String id=request.getParameter("id");
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/uni","root","root");  
Statement stmt=con.createStatement();
stmt.executeUpdate("delete from student where sid='"+id+"'");  
}
catch(Exception e){
    out.print(e);
}%>
