package Logica;


import java.util.ArrayList;


public class Habitaciones {

    private String numeroHabitacion = "";
    private String nombre1 = "-";
    private String nombre2 = "-";
    private String rut1 = "-";
    private String rut2 = "-";
    private String fono1 = "-";
    private String fecha = "-";
    private String tipo = "";

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    private boolean reserva = false;
    private boolean alojado = false;

    public static ArrayList<Habitaciones> habitaciones = new ArrayList<>();
    
    //Crea habitaciones vacias
    public Habitaciones(String numeroHabitacion) {
        this.numeroHabitacion = numeroHabitacion;
    }

    //Crea Reservas
    public Habitaciones(String nombre1, String rut1, String fono1, String fecha, boolean reserva) {
        this.nombre1 = nombre1;
        this.rut1 = rut1;
        this.fono1 = fono1;
        this.fecha = nombre1;
        this.reserva = true;
    }

    //Aloja habitaciones simples reservadas
    public Habitaciones(String nombre1, String rut1, String fono1, String fecha, boolean reserva, boolean alojado) {
        this.nombre1 = nombre1;
        this.rut1 = rut1;
        this.fono1 = fono1;
        this.fecha = nombre1;
        this.reserva = true;
        this.alojado = true;
    }

    //Aloja habitacion simple sin reserva
    public Habitaciones(String nombre1, String rut1, String fono1, boolean alojado, String fecha) {
        this.nombre1 = nombre1;
        this.rut1 = rut1;
        this.fono1 = fono1;
        this.fecha = nombre1;
        this.alojado = true;
    }

    //Aloja habitacion doble sin reserva
    public Habitaciones(String nombre1, String nombre2, String rut1, String rut2, String fono1, boolean alojado, String fecha) {
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.rut1 = rut1;
        this.rut2 = rut2;
        this.fono1 = fono1;
        this.fecha = nombre1;
        this.alojado = true;
    }

    //Aloja habitacion doble con reserva
    public Habitaciones(String nombre1, String nombre2, String rut1, String rut2, String fono1, String fecha, boolean reserva, boolean alojado) {
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.rut1 = rut1;
        this.rut2 = rut2;
        this.fono1 = fono1;
        this.fecha = nombre1;
        this.reserva = true;
        this.alojado = true;
    }

    public String getNumeroHabitacion() {
        return numeroHabitacion;
    }

    public void setNumeroHabitacion(String numeroHabitacion) {
        this.numeroHabitacion = numeroHabitacion;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getRut1() {
        return rut1;
    }

    public void setRut1(String rut1) {
        this.rut1 = rut1;
    }

    public String getFono1() {
        return fono1;
    }

    public void setFono1(String fono1) {
        this.fono1 = fono1;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public boolean isReserva() {
        return reserva;
    }

    public void setReserva(boolean reserva) {
        this.reserva = reserva;
    }

    public boolean isAlojado() {
        return alojado;
    }

    public void setAlojado(boolean alojado) {
        this.alojado = alojado;
    }

    public String getRut2() {
        return rut2;
    }

    public void setRut2(String rut2) {
        this.rut2 = rut2;
    }

}
