<html>
<head>
  <meta varchar="UTF-8">
  <meta name="viewport" content="width=device-width,intial-scale=1">
    <style>
       *  {
                padding-left: 20px;
                padding-top: 5px;
                margin:0;
            }
        body{
            background:url('190.jpg');
            background-repeat:no-repeat;
            background-size: cover;
            background-color: white;
            font-family:'Times New Roman', Times, serif;
            font-weight: 400;
        }
        button{
          background-color: aqua;
          padding: 5px;
        }
        input{
          background:transparent;
          border:none;
          outline:none;
          font-size:16px;
          color:#f20707;
        }
        .contact{
               text-align:center ;
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
                 color:black;
            }
            .div{
              color:#853811;
              font-size:20px;
            }
    </style>
</head>
<body>
 <a href="home.jsp"><input type="image" src="b.png"width="100" height="100" ></a>
<%! String use;%>
<% use=session.getAttribute("First Name").toString();%>
<%@page import="java.sql.*"%>
<%@page import="java.time.format.DateTimeFormatter"%> 
<%@page import="java.time.*"%>
<%! String id;String name,dob,pno,qua,dep,g,period;%>
<%! int f=0;%>
<%
try{
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hello","root","root");  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from faculty"); 
while(rs.next()){
  if(use.equals(rs.getString(1))||use.equals(rs.getString(2)))
 {
     id=rs.getString(1);
     name=rs.getString(2);
     g=rs.getString(3);
     dob=rs.getString(4);
     pno=rs.getString(5);
     qua=rs.getString(6);
     dep=rs.getString(7);
 }
}
DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH");
   DateTimeFormatter dt = DateTimeFormatter.ofPattern("mm");
   LocalDateTime now = LocalDateTime.now();
   String s=dtf.format(now);
   String m=dt.format(now);
int n=Integer.parseInt(m);
int l=Integer.parseInt(s);
LocalDate today = LocalDate.now();
DayOfWeek dayOfWeek = today.getDayOfWeek();
int i=dayOfWeek.getValue();
switch(i)
{
case 1:ResultSet res=stmt.executeQuery("select * from monday"); 
while(res.next()) 
{
  if(use.equals(res.getString(1)))
 {
   if(l==8){
                           if(n>=10)
                             {
                              if(n<=59)
                               {
                                period=res.getString("mp1");
                                }
                              }
                                 }
    else if(l==9)
     {
       if(n>=00)
         {
           if(n<=50)
            {
             period=res.getString("mp2");
            }
            else{
                 period="Break";
                }
          }
          }
    else if(l==10)
      {
       if(n>=10)
   {
   if(n<=59)
      {
         period=res.getString("mp3");
      }
   }
   else
     {
       period="Break";
      }
 }
 else if(l==11)
 {
    if(n>=00)
 {
   if(n<=50)
    {
      period=res.getString("mp4");
    }
     else{
      period=res.getString("mp5");
    }
 }
 }
 else if(l==12)
 {
    if(n>=00)
 {
   if(n<=40)
     {
      period=res.getString("mp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
 else if(l==13)
 {
    if(n>=30)
 {
   if(n<=59)
     {
      period=res.getString("mp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
  else if(l==14) 
   {
     if(n>=20){
           period=res.getString("mp7");
           }
      else{
        period=res.getString("mp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=res.getString("mp8");
     }
     else{
       period=res.getString("mp7");
     }
   }
   else{
     period="College time is over";
   }
 }
}
break;
case 2:ResultSet re=stmt.executeQuery("select * from tuesday");
while(re.next()) 
{
  if(use.equals(re.getString(1))){
  if(l==8)
   {
   if(n>=10)
   {
   if(n<=59)
    {
      period=re.getString("tp1");
    }
   }
  }
  else if(l==9)
  {
    if(n>=00)
   {
   if(n<=50)
    {
    period=re.getString("tp2");
    }
  else{
     period="Break";
      }
 }
 }

 else if(l==10)
 {
 if(n>=10)
   {
   if(n<=59)
    {
      period=re.getString("tp3");
    }
    }
  else
  {
   period="Break";
  }
  }
  else if(l==11)
  {
    if(n>=00)
 {
   if(n<=50)
    {
      period=re.getString("tp4");
    }
     else{
      period=re.getString("tp5");
    }
 }
 }
  else if(l==12)
  {
    if(n>=00)
 {
   if(n<=40)
     {
      period=re.getString("tp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
  else if(l==1)
  {
    if(n>=30)
 {
   if(n<=59)
     {
      period=re.getString("tp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
 else if(l==14) 
   {
     if(n>=20){
           period=re.getString("tp7");
        }
      else{
        period=re.getString("tp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=re.getString("tp8");
     }
     else{
       period=re.getString("tp7");
     }
   }
   else{
     period="College time is over";
   }
  }
} 
break;
case 3:ResultSet r=stmt.executeQuery("select * from wednesday");
while(r.next()) 
{
  if(use.equals(r.getString(1))){
  if(l==8)
   {
   if(n>=10)
   {
   if(n<=59)
    {
      period=r.getString("tp1");
    }
   }
  }
  else if(l==9)
  {
    if(n>=00)
   {
   if(n<=50)
    {
    period=r.getString("tp2");
    }
  else{
     period="Break";
      }
 }
 }

 else if(l==10)
 {
 if(n>=10)
   {
   if(n<=59)
    {
      period=r.getString("tp3");
    }
    }
  else
  {
   period="Break";
  }
  }
  else if(l==11)
  {
    if(n>=00)
 {
   if(n<=50)
    {
      period=r.getString("tp4");
    }
     else{
      period=r.getString("tp5");
    }
 }
 }
  else if(l==12)
  {
    if(n>=00)
 {
   if(n<=40)
     {
      period=r.getString("tp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
  else if(l==1)
  {
    if(n>=30)
 {
   if(n<=59)
     {
      period=r.getString("tp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
 else if(l==14) 
   {
     if(n>=20){
           period=r.getString("tp7");
        }
      else{
        period=r.getString("tp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=r.getString("tp8");
     }
     else{
       period=r.getString("tp7");
     }
   }
   else{
     period="College time is over";
   }
  }
} 
break;
case 4:ResultSet resu=stmt.executeQuery("select * from thrusday");
while(resu.next()) 
{
  if(use.equals(resu.getString(1))){
  if(l==8)
   {
   if(n>=10)
   {
   if(n<=59)
    {
      period=resu.getString("tp1");
    }
   }
  }
  else if(l==9)
  {
    if(n>=00)
   {
   if(n<=50)
    {
    period=resu.getString("tp2");
    }
  else{
     period="Break";
      }
 }
 }

 else if(l==10)
 {
 if(n>=10)
   {
   if(n<=59)
    {
      period=resu.getString("tp3");
    }
    }
  else
  {
   period="Break";
  }
  }
  else if(l==11)
  {
    if(n>=00)
 {
   if(n<=50)
    {
      period=resu.getString("tp4");
    }
     else{
      period=resu.getString("tp5");
    }
 }
 }
  else if(l==12)
  {
    if(n>=00)
 {
   if(n<=40)
     {
      period=resu.getString("tp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
  else if(l==1)
  {
    if(n>=30)
 {
   if(n<=59)
     {
      period=resu.getString("tp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
 else if(l==14) 
   {
     if(n>=20){
           period=resu.getString("tp7");
        }
      else{
        period=resu.getString("tp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=resu.getString("tp8");
     }
     else{
       period=resu.getString("tp7");
     }
   }
   else{
     period="College time is over";
   }
  }
} 
break;
case 5:ResultSet resul=stmt.executeQuery("select * from friday");
while(resul.next()) 
{
  if(use.equals(resul.getString(1))){
  if(l==8)
   {
   if(n>=10)
   {
   if(n<=59)
    {
      period=resul.getString("tp1");
    }
   }
  }
  else if(l==9)
  {
    if(n>=00)
   {
   if(n<=50)
    {
    period=resul.getString("tp2");
    }
  else{
     period="Break";
      }
 }
 }

 else if(l==10)
 {
 if(n>=10)
   {
   if(n<=59)
    {
      period=resul.getString("tp3");
    }
    }
  else
  {
   period="Break";
  }
  }
  else if(l==11)
  {
    if(n>=00)
 {
   if(n<=50)
    {
      period=resul.getString("tp4");
    }
     else{
      period=resul.getString("tp5");
    }
 }
 }
  else if(l==12)
  {
    if(n>=00)
 {
   if(n<=40)
     {
      period=resul.getString("tp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
  else if(l==1)
  {
    if(n>=30)
 {
   if(n<=59)
     {
      period=resul.getString("tp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
 else if(l==14) 
   {
     if(n>=20){
           period=resul.getString("tp7");
        }
      else{
        period=resul.getString("tp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=resul.getString("tp8");
     }
     else{
       period=resul.getString("tp7");
     }
   }
   else{
     period="College time is over";
   }
  }
} 
break;
case 6:ResultSet rt=stmt.executeQuery("select * from saturday");
while(rt.next()) 
{
  if(use.equals(rt.getString(1))){
  if(l==8)
   {
   if(n>=10)
   {
   if(n<=59)
    {
      period=rt.getString("tp1");
    }
   }
  }
  else if(l==9)
  {
    if(n>=00)
   {
   if(n<=50)
    {
    period=rt.getString("tp2");
    }
  else{
     period="Break";
      }
 }
 }

 else if(l==10)
 {
 if(n>=10)
   {
   if(n<=59)
    {
      period=rt.getString("tp3");
    }
    }
  else
  {
   period="Break";
  }
  }
  else if(l==11)
  {
    if(n>=00)
 {
   if(n<=50)
    {
      period=rt.getString("tp4");
    }
     else{
      period=rt.getString("tp5");
    }
 }
 }
  else if(l==12)
  {
    if(n>=00)
 {
   if(n<=40)
     {
      period=rt.getString("tp5");
     }
    else{
          period="Lunch Break";
        }
 }
 }
  else if(l==1)
  {
    if(n>=30)
 {
   if(n<=59)
     {
      period=rt.getString("tp6");
     }
 }
    else{
          period="Lunch Break";
        }
 }
 else if(l==14) 
   {
     if(n>=20){
           period=rt.getString("tp7");
        }
      else{
        period=rt.getString("tp6");
      }
   }
   else if(l==15){
     if(n>=10){
           period=rt.getString("tp8");
     }
     else{
       period=rt.getString("tp7");
     }
   }
   else{
     period="College time is over";
   }
  }
} 
break;
case 7:period="Holiday";
}
con.close();
}
catch(Exception e){}
%> 
  <h2 style="color: rgb(0, 0, 0);"><center>VIGNAN (Deemed to be UNIVERSITY)</center></h2>
 <b><br><br><br>
  &emsp;&emsp;&emsp;&emsp;Name:&emsp;&emsp;&emsp;&emsp;<input type="text" value="<%=name%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Faculty Id:&emsp;&emsp;<input type="text" value="<%=id%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Phone No: &emsp;&emsp;<input type="text" value="<%=pno%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Gender:&emsp;&ensp;&emsp;&ensp;&nbsp;<input type="text" value="<%=g%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Date of Joining:<input type="text" value="<%=dob%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Department:&emsp;&nbsp;<input type="text" value="<%=dep%>" readonly>
  <br>
  <br>
  &emsp;&emsp;&emsp;&emsp;Qualification:&ensp;&nbsp;<input type="text" value="<%=qua%>" readonly>
  <br>
  <br>
  <div class="div">
  Now this Faculty is in
    <input type="text" id="in" value="<%=period%>" maxlength="80" size="80" style="color:rgb(13, 53, 158);font-size: larger;">
    </b>
    </div>
    <br>
    <br>
    <br>
    <h6>'*' Means Data is not available </h6>
</body>
</html>