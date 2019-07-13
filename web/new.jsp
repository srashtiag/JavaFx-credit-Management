<%-- 
    Document   : new
    Created on : 12 Jul, 2019, 10:51:19 AM
    Author     : Kruti
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="solid.jpg">
        <form action="" method="get">
            <input allign="center" style=font-size:40px type="text" class="form control" name="q" placeholder="search-here">
       
            <table align="center" style="font-size: 30px">
            <tr>
            <td>name</td>
            <td>mail</td>
            <td>contact</td>
            <td>credit</td>
            </tr>
        </table>
        
        <%
            
       try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            ResultSet res=null;
        
            Statement stat =conn.createStatement();
            String query=request.getParameter("q");
            String data;
            if(query!=null){
            data="select * from credit_table where name like '%"+query+"%' or mail like '%"+query+"%' or contact like '%"+query+"%'or credit like '%"+query+"%' ";   
            }
            else{
                data="select * credit_table order by name";
            }
            res=stat.executeQuery(data);
            while(res.next()){
                %>
    <tr>
    <td><%=res.getString("name")%></td>
    <td><%=res.getString("mail")%></td>
    <td><%=res.getString("contact")%></td>
    <td><%=res.getString("credit")%></td>
    </tr>
    
    <%
        }
    }
    
              catch(Exception ex)
                      
           {
               
              
                        
           }  


  
  %>
  
        
        </form>     
                    
    </body>
</html> 