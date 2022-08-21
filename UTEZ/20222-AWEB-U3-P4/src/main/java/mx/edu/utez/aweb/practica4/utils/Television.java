package mx.edu.utez.aweb.practica4.utils;

public class Television {
    private boolean on;
    private int channel;
    private int volumen;

    public Television() {

    }

    public Television(boolean on) {
        this.on = on;
    }

    public Television(boolean on, int channel, int volumen) {
        this.on = on;
        this.channel = channel;
        this.volumen = volumen;
    }

    public boolean isOn() {
        return on;
    }

    public void setOn(boolean on) {
        this.on = on;
    }

    public int getChannel() {
        return channel;
    }

    public void setChannel(int channel) {
        this.channel = channel;
    }

    public int getVolumen() {
        return volumen;
    }

    public void setVolumen(int volumen) {
        this.volumen = volumen;
    }
}
