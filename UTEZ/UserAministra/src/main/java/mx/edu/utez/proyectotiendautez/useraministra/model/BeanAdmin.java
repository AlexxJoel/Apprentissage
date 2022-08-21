package mx.edu.utez.proyectotiendautez.useraministra.model;

import java.io.InputStream;

public class BeanAdmin {
    //Encapsulamos
    private String user;
    private String correo;
    private String password;
    private int roles_id;
    private String roles_name;
    private InputStream image;

    public BeanAdmin(String user, String correo, String password, int roles_id, String roles_name, InputStream image) {
        this.user = user;
        this.correo = correo;
        this.password = password;
        this.roles_id = roles_id;
        this.roles_name = roles_name;
        this.image = image;
    }


    public InputStream getImage() {
        return image;
    }

    public void setImage(InputStream image) {
        this.image = image;
    }


    public BeanAdmin(){
    }

    public BeanAdmin(String user, String correo, String password, int roles_id, String roles_name) {
        this.user = user;
        this.correo = correo;
        this.password = password;
        this.roles_id = roles_id;
        this.roles_name = roles_name;
    }

    public BeanAdmin(String user, String correo, String password, int roles_id) {
        this.user = user;
        this.correo = correo;
        this.password = password;
        this.roles_id = roles_id;
    }

    public BeanAdmin(String correo, String password) {
        this.correo = correo;
        this.password = password;
    }

    public BeanAdmin(String user, String correo, String password) {
        this.user = user;
        this.correo = correo;
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoles_id() {
        return roles_id;
    }

    public void setRoles_id(int roles_id) {
        this.roles_id = roles_id;
    }

    public String getRoles_name() {
        return roles_name;
    }

    public void setRoles_name(String roles_name) {
        this.roles_name = roles_name;
    }


    @Override
    public String toString() {
        return "BeanAdmin{" +
                "user='" + user + '\'' +
                ", correo='" + correo + '\'' +
                ", password='" + password + '\'' +
                ", roles_id=" + roles_id +
                ", roles_name='" + roles_name + '\'' +
                ", image=" + image +
                '}';
    }
}
