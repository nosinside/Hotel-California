<%--
    Document   : CerrarAtencion
    Created on : 07-jun-2016, 23:30:18
    Author     : Johan Barahona
--%>
<%@page import="Logica.Parametros"%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Modificar cliente</title>
    </head>
    <body>
        <div id="contenedor">
            <div id="cabecera">
                <a href="index.jsp"><img src="Imagenes/logo.png"></a>
            </div>
            <div id="barra-navegacion">
                <%                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">
                <%
                    String modicliRut = request.getParameter("txtRut");
                    if (modicliRut != null) {
                        Parametros.parametrosMH = modicliRut;
                        out.println(Render.formModiClivalues);
                    } else if (Parametros.parametrosMH == null) {
                        out.println("<h1>Modificación de clientes</h1><h3>Ingrese el rut de cliente a modificar</h4>");
                        out.println(Render.formModiCli);
                    } else {
                        modicliRut = Parametros.parametrosMH;
                        String txtNombre = request.getParameter("txtNombre");
                        String txtRut = request.getParameter("txtRut2");
                        if (txtNombre != null || txtRut != null) {
                            for (int i = 0; i < Habitaciones.habitaciones.size(); i++) {
                                if (modicliRut.equals(Habitaciones.habitaciones.get(i).getRut1())) {
                                    Habitaciones.habitaciones.get(i).setRut1(txtRut);
                                    Habitaciones.habitaciones.get(i).setNombre1(txtNombre);
                                    out.println("<h3>Ingresado Correctamente</h3>");
                                    Parametros.parametrosMH = null;
                                    break;
                                } else {
                                    out.println("<p>Rut no encontrado</p>");
                                }
                            }
                        }
                    }


                %>

            </div>
            
        </div>
    </body>
</html>
