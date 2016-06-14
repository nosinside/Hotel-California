<%-- 
Document   : Cotizacion
Created on : 07-jun-2016, 23:30:35
Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String tipoH = request.getParameter("tipoH");
    String dias = request.getParameter("dias");
    int total = 0;
    if (dias != null || tipoH != null) {

        int castTipoH = 0;
        int castDias = 0;

        castTipoH = Integer.parseInt(tipoH);
        castDias = Integer.parseInt(dias);
        total = castDias * castTipoH;
    }


%>


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
                <%                    out.println(Render.barraNavegacion);
                %>


            </div>
            <div id="cuerpo">

                <%
                    out.println(Render.Cotizacion);

                    out.println("Total: " + String.valueOf(total));
                %>

            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>

        </div>
    </body>
</html>
