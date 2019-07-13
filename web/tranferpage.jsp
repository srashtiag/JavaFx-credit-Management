<%-- 
    Document   : tranferpage
    Created on : 12 Jul, 2019, 4:33:12 PM
    Author     : Kruti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <style>
            insidetheme{
                font-size: 50px;
                font-family:fantasy;
            }
            
        </style>
        
        <body background="solid.jpg" background-repet>
        
       
        <h1   align="center" border="2" cellspacing="10" cellpadding="10" >Tranfer credit Form</h1>

        <form action="new1.jsp">
<table align="center" border="0" cellspacing="10" cellpadding="5">
    <tr bgcolor="blue">
        <td class="insidetheme" colspan="2s"><font color="white">FILL THE FORM</font></td>
    </tr>
    <tr>
        <td> Name</td>
        <td><input type="text"></td>
    </tr>
    <tr>
        <td>Select User</td>
                <td><select>
                        <option>Select User</option>
                        <option>ram</option>
                        <option>sia</option>
                        <option>hanu</option>
                        <option>dhash</option>
                        <option>laksh</option>
                        <option>ravan</option>
                        <option>push</option>
                        <option>pullu</option>
                        <option>kumbh</option>
            </select></td>
        </tr>
    <tr>
        <td>
            <input type="submit" value="Submit">
            <input type="reset" value="Clear">
        </td>
    </tr>
</table>
</form>
        

    </body>
</html>
