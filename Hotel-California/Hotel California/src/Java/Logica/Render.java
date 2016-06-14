/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

/**
 *
 * @author Johan Barahona
 */
public class Render {
    public static String barraNavegacion = "<a href='VerHabitaciones.jsp'>Ver Habitaciones</a> |\n" +
"                <a href='RegistrarHuesped.jsp'>Registrar Huesped</a> |\n" +
"                <a href='ReservaHabitacion.jsp'>Reservar Habitación</a> |\n" +
"                <a href='ModificarCliente.jsp'>Modificar Cliente</a> |\n" +
"                <a href='CerrarAtencion.jsp'>Cerrar Atención</a> |\n" +
"                <a href='InformacionJSP.jsp'>Información</a>";
    
// para formulario RegistrarHuesped, dibujjo de formulario
    public static String formRegHuesped1 = "<form method='post'></br>\n" +
"                    <label for='habitacion'>Numero Habitación</label>\n" +
"                    <input name='txtNumero' type='number'/></br>\n" +
"                    <label for='Huesped'>Nombre Huesped</label><input name='txtNombre' type='text'/></br>\n" +
"                    <label for='Rut'>Rut Huesped</label><input name='txtRut' type='text'/></br>\n" +
"                    <label for='FechaIngreso'>Fecha Ingreso</label><input name='txtFecha' type='date'/></br>\n" +
"                 <input type='submit' value='Asignar' id=enviar required/></br><input type='submit' name='btnCancelar' value='cancelar'/></br>\n" +
"                </form>";
    
    public static String formRegHuesped2 = "<form method='post'></br>\n" +
"                    <label for='habitacion'>Numero Habitación</label>\n" +
"                    <input name='txtNumero' type='number' required/></br>\n" +
"                    <label for='Huesped'>Nombre Huesped</label><input name='txtNombre' type='text' required/></br> \n" +
"                    <label for='Rut'>Rut Huesped</label><input name='txtRut' type='text' required/></br>\n" +
"		    <label for='Huesped2'>Nombre Huesped 2</label><input name='txtNombre2' type='text' requiered/></br>\n" +
"		    <label for='RutHuesped2'>Rut Huesped 2</label><input name='txtRut2' type='text' requiered/></br>\n" +
"                    <label for='FechaIngreso'>Fecha Ingreso</label><input name='txtFecha' type='date' required/></br>\n" +
"                 <input type='submit' value='Asignar' id=enviar required/></br>\n" +
"                </form>";
    public static String formRegHuesped3 = "3";
    
    public static String formRenderHuesped = "<p>Seleccione que tipo de habitación registra el Huesped</p>\n" +
"                <form id='comHuesped' method='post'>\n" +
"                    <label>Single</label><input name='rbcheck' type='radio' value='1'/></br>\n" +
"                    <label>Doble</label><input name='rbcheck' type='radio' value='2'/></br>\n" +
"                    <label>Presidencial</label><input name='rbcheck' type='radio' value='3'/></br>\n" +
"                    <p><input type='submit' value='Enviar'></p>\n" +
"                </form>";
    
    
}
