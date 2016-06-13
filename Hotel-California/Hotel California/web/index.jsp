<%--
    Document   : Index
    Created on : 07-jun-2016, 23:30:18
    Author     : Johan Barahona
--%>
<%@page import="Logica.Render"%>
<%@page import="Logica.Habitaciones" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%><html>
    <head>
        <link rel="stylesheet" type="text/css" href="Style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to the hotel California | Inicio</title>
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
<%
    // Creando Habitaciones Vacias
    
    if(Habitaciones.habitacionSimple.size() < 1){
        for(int i = 0; i < 8; i++){
            
            // String numeroHabitacion, String nombre1, String rut1, String fono1
        Habitaciones single = new Habitaciones(Integer.toString(i+1));
        Habitaciones.habitacionSimple.add(single);
    }
    }
    
    if(Habitaciones.habitacionDoble.size() < 1){
        for(int i = 0; i < 9; i++){
            Habitaciones doble = new Habitaciones(Integer.toString(i+1));
            Habitaciones.habitacionDoble.add(doble);
        }
    }
    
    if(Habitaciones.habitacionPentHouse.size() < 1){
        for(int i = 0; i <= 1; i++){
            Habitaciones pHouse = new Habitaciones(Integer.toString(i+1));
            Habitaciones.habitacionPentHouse.add(pHouse);
        }
    }
    
%>
                <h1>Bienvenido</h1>
                <h4>A el Hotel California</h4>
                <p>Sistema Integrado de reserva de habitaciones, desarrollado por:</p>
                <ul><li>Ademir Monardes</li>
                    <li>Bastian Padilla</li>
                    <li>Darwin Vera</li>
                    <li>Johan Barahona</li>
                </ul>
                <p>Para el docente: Cristian Leiva</p>
            </div>
            <div id="navAbajo">
                <a href="javascript:history.back(1)">Volver AtrÃ¡s</a>
            </div>
            
        </div>
    </body>
</html>

