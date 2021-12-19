<%-- 
    Document   : mostrar
    Created on : 16/12/2021, 20:22:03
    Author     : EXO
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="font-family: cursive;background: #000000;">
        <h4 style="text-align: center;background: #cc0099;color: #ffffff">#MOSTRAR USUARIO</h4> 
          <br/>
        <a href="index.jsp" style="background: #00cc99;color: #ffffff;size: 28px;">VOLVER AL MENÚ</a>
        <hr style="background: #ffffff"/> 
        <br/>
    <center>
        <html:form  action="/Mostrar.do">
            <table border="1" style="color: #ffffff"> 
                <tr>
                    <th  style="background: #cc0099;color: #ffffff">ID_USUARIO</th>
                    <th  style="background: #cc0099;color: #ffffff">USUARIO</th>
                    <th  style="background: #cc0099;color: #ffffff">EMAIL</th>

                </tr>
                <logic:iterate id="u" name="listForm" property="list" >
                    <tr>
                        <td><bean:write name="u" property="id"/></td>
                        <td><bean:write name="u" property="usuario"/></td>
                        <td><bean:write name="u" property="email"/></td>
                    </tr>
                </logic:iterate>
            </table>
            <br/>
            <html:submit value=">>" style="font-size: 20px; background: #00cc99;color: #ffffff;"></html:submit>
        </html:form>
        <br/>
        <hr style="background: #ffffff"/> 
    </center>
</body>
</html>

