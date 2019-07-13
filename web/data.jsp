<%-- 
    Document   : datajsp
    Created on : 9 Jul, 2019, 4:34:20 PM
    Author     : Kruti
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     </head>  
         <style>
        .mystyle
        {
            color:white;
            font-size: 20px;
            font-family: arial;
        }
        .mystyle:hover
        {
            background:peru;
            color:white;
            //border:solid;     //dotted,inset,outset
            //border-color:blue;
            //font-size: 30px;
        }
        .insidetheme{
            color:white;
            font-size:25px;
            font-family: fantasy;
            
        }
        .insidetheme:hover{
            background:black;
                        //background-image:url(');
        }
        body{
            
        }
    </style>
    <body style="background-color:grey"  >
        <table width="100%" style="background-color: white" border="0"></table>

<table width="100%">
    <tr align='center'>
        <td width="40%" ><font size="8px" color="black">CREDIT MANAGEMENT</font></td>
<td width="15%" class="insidetheme">Manage Account</td>
<td width="15%" class="insidetheme">Question and Concern</td>
<td width="15%" class="insidetheme">Contact Us</td>
</tr>
</table>

        
<!--    <body bgcolor="blue">-->
<!--    <body bgcolor="#4169E1">-->
        <img src="image1.jpg" width="100%">
        
        
<table width="100%" border="1">
            <tr align="center" bgcolor="black">
                <td width="14%" class="mystyle"><a href="home.jsp">Home</a></td>
                <td width="14%" class="mystyle">User Page</td>
                <td width="14%" class="mystyle"><a href="tranferpage.jsp"></a> Transfer Credit</td>
            </tr>
        </table>


<marquee scrollamount='10' direction="">
    <font color="white" class="mystyle">

    The goal within a bank or company in controlling credit is to improve revenues
    and profit by facilitating sales and reducing financial risks.

 
</marquee>
    <table width="100%" border="1">
        <tr align="center" bgcolor="black">
            <td background="solid.jpg "width="14%" class="mystyle">USER LIST</td>
            <td  background="solid.jpg "width="14%" class="mystyle"><a href="new.jsp">VIEW INFORMATION</a></td>
            
        </tr>
        
    </table>
    

    </body> 
    <center>
        <table border="2" style="margin-bottom: 50%;padding-bottom: 50%;">
            
            <tr style="background-color: bisque;font-weight: bolder;">
                <td >name</td>
                <td >mail</td>
                <td >contact</td>
                <td >credits</td>
            </tr>
            <%
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                    Statement st=conn.createStatement();
                    String qry="select * from credit_table";
                    ResultSet  rs= st.executeQuery(qry);
                    while(rs.next())
                        
                    {
                        String name=rs.getString("name");
                        String mail=rs.getString("mail");
                        String cont=rs.getString("contact");
                        String credits=rs.getString("credit");
                     
               
            %>
            <tr>
                <td width="10%" ><%=name%></td>
                
                <td><%=mail%></td>
                
                <td width="40%"><%=cont%></td>
              <td><%=credits%></td>
                
            </tr>
        
            <%
                }
}
                
                catch(Exception ex){
                        out.println(ex);
                        } 
                %>
        </table>
        <table width="100%" border="1" >
            <tr align="center" bgcolor="black">
                <td width="14%" class="mystyle"><a href="homepage_1.html"></a></td>
                
            </tr>
        </table>
      


    </center>
   
    </body>
</html>
