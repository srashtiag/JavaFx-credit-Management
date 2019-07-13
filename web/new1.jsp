<%-- 
    Document   : new1
    Created on : 12 Jul, 2019, 6:55:57 PM
    Author     : Kruti
--%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
         <%
            try
        {

           String name=request.getParameter("name");
            String sel=request.getParameter("selection");
           String amt=request.getParameter("amount");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into transfer_table values(?,?,?)");
            st.setString(1,name);
            st.setString(2,sel);
            st.setString(3,amt);
            st.executeUpdate();
            response.sendRedirect("tranferpage.jsp");
            JOptionPane.showMessageDialog(null, "please select valid category");
        }catch(Exception ex)
        {
             out.println(ex);
        }

                     


%>
         
    </body>
</html>