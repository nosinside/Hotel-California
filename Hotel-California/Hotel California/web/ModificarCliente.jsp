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
    String modicliRut = request.getParameter("txtRut");
    if(Parametros.parametrosMH == null){
        Parametros.parametrosMH = modicliRut;
    }
    
    String txtNombre = request.getParameter("txtNombre");
    String txtRut = request.getParameter("txtRut2");
    if(txtNombre != null || txtRut != null){
        for(Habitaciones aux: Habitaciones.habitaciones){
            if(aux.getRut1().equals(Parametros.parametrosMH)){
                aux.setRut1(txtRut);
                aux.setNombre1(txtNombre);
            }
        }
    }
    
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
                <%
                    out.println(Render.barraNavegacion);
                %>
            </div>
            <div id="cuerpo">
                <% 
                    if(modicliRut == null){
                        out.println("<h1>Modificación de clientes</h1><h3>Ingrese el rut de cliente a modificar</h4>");
                    out.println(Render.formModiCli);
                    }else{
                        for(Habitaciones aux: Habitaciones.habitaciones){
                            if(aux.getRut1().equals(modicliRut)){
                                out.println(Render.formModiClivalues);
                                break;
                            }else{
                                out.println("<h3>Rut no encontrado</h3>");
                                break;
                            }
                        }
                    }
                    
                %>

            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver Atrás</a>
            </div>
        </div>
    </body>
</html>
