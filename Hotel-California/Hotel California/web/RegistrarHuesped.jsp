<%-- 
    Document   : RegistrarHuesped
    Created on : 07-jun-2016, 22:59:25
    Author     : bpadi_000 ..
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Huesped</title>
    </head>
    <body>
        <h1></h1>
         <form method="post">
            <p>Número de Habitación: <input name="txtNumero" type="number" required/></p>
            <p>Nombre Huesped: <input name="txtNombre" type="text" required/></p>
            <p>Rut <input name="txtRut" type="text" required/></p>
            <p>Fecha: <input name="txtFecha" type="date" required/></p>
            <p><input type="submit" value="Asignar" required/></p>
        </form>
        
    </body>
</html>
