package mx.edu.utez.aweb.practica4.control;

import mx.edu.utez.aweb.practica4.model.BeanAuthentication;
import mx.edu.utez.aweb.practica4.model.DaoAuthentication;

public class ServiceAuthentication {

    public BeanAuthentication login(String nickname, String password) {
        DaoAuthentication daoAuthentication = new DaoAuthentication();

        return daoAuthentication.login(nickname,password);

    }
}
