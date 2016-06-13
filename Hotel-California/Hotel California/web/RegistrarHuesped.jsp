<%-- 
    Document   : RegistrarHuesped
    Created on : 07-jun-2016, 23:30:35
    Author     : Johan Barahona
--%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%@page import="Logica.Parametros" %>

<%
    // Para el refresco del formulario
        String mensaje = "";
        String error = "";
        String refresh = "";

        if (Parametros.parametrosrbRH == null) {

            Parametros.parametrosrbRH = request.getParameter("rbcheck");
        }
        if (Parametros.parametrosrbRH != null) {
            if (Parametros.parametrosrbRH.equals("1")) {
                mensaje = Render.formRegHuesped1;

            } else if (Parametros.parametrosrbRH.equals("2")) {
                mensaje = Render.formRegHuesped2;
            } else if (Parametros.parametrosrbRH.equals("3")) {
                mensaje = Render.formRegHuesped3;
            }
        } else if (Parametros.parametrosrbRH == null) {
            mensaje = Render.formRenderHuesped;
        }
        String txtNombre = "";
        String txtNumero = "";
        String txtRut = "";
        String txtRut2 = "";
        String txtNombre2 = "";
        String txtFecha = "";
        String btnCancelar = "";
        txtNumero = request.getParameter("txtNumero");
        txtNombre = request.getParameter("txtNombre");
        txtNombre2 = request.getParameter("txtNombre2");
        txtRut2 = request.getParameter("txtRut2");
        txtRut = request.getParameter("txtRut");
        txtFecha = request.getParameter("txtFecha");
        btnCancelar = request.getParameter("btnCancelar");
        if(btnCancelar != null){
            if(btnCancelar.equals("cancelar")){
            Parametros.parametrosrbRH = null;
        }
        }
if(Parametros.parametrosrbRH != null){
    if (Parametros.parametrosrbRH.equals("1")) {
            if (txtNumero != null || txtNombre != null || txtRut != null || txtFecha != null) {
                for (Habitaciones aux : Habitaciones.habitacionSimple) {
                    if (txtNumero.equals(aux.getNumeroHabitacion())) {
                        aux.setAlojado(true);
                        aux.setReserva(true);
                        aux.setNombre1(txtNombre);
                        aux.setRut1(txtRut);
                        aux.setFecha(txtFecha);
                        Parametros.parametrosrbRH = null;
                    }
                }
            }
        } else if (Parametros.parametrosrbRH.equals("2")) {
            if (txtNumero != null || txtNombre != null || txtRut != null || txtRut2 != null || txtFecha != null || txtNombre2 != null) {
                for (Habitaciones aux : Habitaciones.habitacionDoble) {
                    if (txtNumero.equals(aux.getNumeroHabitacion())) {
                        aux.setAlojado(true);
                        aux.setReserva(true);
                        aux.setNombre1(txtNombre);
                        aux.setNombre2(txtNombre2);
                        aux.setRut1(txtRut);
                        aux.setRut2(txtRut2);
                        aux.setFecha(txtFecha);
                        Parametros.parametrosrbRH = null;
                    }
                }
            }
        } else if (Parametros.parametrosrbRH.equals("3")) {

        }
}
        
 
%>

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
                <h1>Registro de Huespedes</h1>
                <%=mensaje%>
                
            </div>
            
        </div>
    </body>
</html>

         
