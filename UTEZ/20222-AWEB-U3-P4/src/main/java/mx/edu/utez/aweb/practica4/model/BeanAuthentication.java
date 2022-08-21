package mx.edu.utez.aweb.practica4.model;

public class BeanAuthentication {
    private long userId;
    private String nickname;
    private String rol;

    public BeanAuthentication() {
    }

    public BeanAuthentication(long userId, String nickname, String rol) {
        this.userId = userId;
        this.nickname = nickname;
        this.rol = rol;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
}
