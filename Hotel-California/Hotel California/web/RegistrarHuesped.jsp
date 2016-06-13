    <%-- 
    Document   : RegistrarHuesped
    Created on : 07-jun-2016, 23:30:35
    Author     : Johan Barahona
--%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>
<%
    // Para el refresco del formulario
    String mensaje="";
    String parametro= "";
    parametro = request.getParameter("rbcheck");
    String txtNumero = "";
    
        // Para crear el usuario en la Habitación Single
        String txtNombre = "";
        String txtRut = "";
        String txtFecha = "";
        txtNumero = request.getParameter("txtNumero");
        txtNombre = request.getParameter("txtNombre");
        txtRut = request.getParameter("txtRut");
        txtFecha = request.getParameter("txtFecha");
        if(txtNumero != null || txtNombre != null || txtRut != null || txtFecha != null){
            for(Habitaciones aux: Habitaciones.habitacionSimple){
            if(txtNumero.equals(aux.getNumeroHabitacion())){
                aux.setAlojado(true);
                aux.setReserva(true);
                aux.setNombre1(txtNombre);
                aux.setRut1(txtRut);
                aux.setFecha(txtFecha);
                parametro = null;
            }
        }
        }
    
    if(parametro != null){
        if(parametro.equals("1")){
        mensaje = Render.formRegHuesped1;
        
        }else{
            if(parametro.equals("2")){
            mensaje = Render.formRegHuesped2;
            }else{
                if(parametro.equals("3")){
                mensaje = Render.formRegHuesped3;
            }
        }    
    }
    }else{
        if(parametro == null){
           mensaje = Render.formRenderHuesped;
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

         
