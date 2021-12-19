<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="font-family: cursive; background: #000000"> 
        <h4 style="color: #00cc99; text-align: center">#MANTENIMIENTO DE DATOS</h4>
        <br/>
        <br/> 
        <hr style="background: #ffffff"/>
        <br/>
        <br/>
    <center>
        <h5 style="background: #ff0099"> <a href="insertar.jsp" style="color: #ffffff">INSERTAR USUARIO</a> </h5> 
        <h5 style="background: #00cc99"> <a href="modificar.jsp" style="color: #ffffff">MODIFICAR USUARIO</a> </h5> 
        <h5 style="background: #cc0099"> <a href="mostrar.jsp" style="color: #ffffff">MOSTRAR USUARIO</a> </h5> 
        <h5 style="background: #33cc00"> <a href="eliminar.jsp" style="color: #ffffff">ELIMINAR USUARIO</a> </h5> 
        </center>
        <br/>
        <br/>
        <hr style="background: #ffffff"/>   
    </body>
</html:html>