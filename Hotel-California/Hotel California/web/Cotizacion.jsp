    <%-- 
    Document   : Cotizacion
    Created on : 07-jun-2016, 23:30:35
    Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Cotización</title>
    </head>
    <body>
        <div id="contenedor">
            <div id="cabecera">
                <a href="index.jsp.html"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <%
                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">

                <h1>Cotización</h1>
                <p>Ingrese los datos para registrar la cotización:</p>
                <form method="post">
                    Habitación a cotizar:
                        <select> 
                        <option value="txtSingle">Single</option>
                        <option value="txtDoble">Doble</option>
                        <option value="txtPentHouse">PentHouse</option>
                        </select>
                    </br>
                    Nombre de Huesped:
                        <input name="txtNombre1" type="text" required/>
                        </br>
                        Telefono del Huesped:
                        <input type="number" name="txNumeroTelefono" requiered/>
                        </br>
                        <p>
                            <input type="submit" value="Enviar"/>
                        </p>
                </form>
            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
            
        </div>
    </body>
</html>
