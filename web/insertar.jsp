<%-- 
    Document   : insertar
    Created on : 16/12/2021, 20:20:59
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
        <title>Insertar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="font-family: cursive; background: #000000">
        <h4 style="text-align: center;background: #ff0099;color: #ffffff">#INSERTAR USUARIO</h4>  
        <br/> 
        <hr style="background: #ffffff"/> 
        <br/>
    <center>  
        <html:form  action="/Insertar.do">
            <table>
                <tr>
                    <td colspan="2" style="font-weight: bold;size: 25px;"></td>
                </tr>
                <tr>
                    <td style="font-weight: bold; size: 15px; color: #ff0099;" aling="rigth">ID:</td>
                    <td> <html:text property= "id" />                        
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; size: 15px; color: #ff0099;" aling="rigth">USUARIO:</td>
                    <td> <html:text property= "usuario" />                        
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; size: 15px; color: #ff0099;" aling="rigth">EMAIL:</td>
                    <td> <html:text property= "email" />                        
                    </td>
                </tr> 
                <tr>
                    <td style="font-weight: bold; size: 15px; color: #ff0099;" aling="rigth">PASSWORD:</td>
                    <td> <html:password property= "password" />                
                    </td>
                </tr>
            </table> 
            <br/>
            <input type="submit" value="INSERTAR" style="font-size: 15px; background: #ff0099;color: #000000;">  
        </html:form>   
        <br/>
        <hr style="background: #ffffff"/> 
    </center>  
</body>
</html>
