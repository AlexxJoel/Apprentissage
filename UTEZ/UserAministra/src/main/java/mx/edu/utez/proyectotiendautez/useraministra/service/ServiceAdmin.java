package mx.edu.utez.proyectotiendautez.useraministra.service;

import mx.edu.utez.proyectotiendautez.useraministra.model.BeanAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.model.DaoAdmin;
import mx.edu.utez.proyectotiendautez.useraministra.utils.ResultAction;

import java.util.List;

public class ServiceAdmin {

    DaoAdmin daoAdmin = new DaoAdmin();
    ResultAction res = new ResultAction();
    public List<BeanAdmin> seeAdmin() {
        return daoAdmin.seeAdmin();
    }


    public  ResultAction addAdmin( BeanAdmin admin ){
        if (daoAdmin.addAdmin(admin)){
            res.setResult(true);
            res.setMessage("Persona registrada");
            res.setStatus(200);

        }else{
            res.setResult(false);
            res.setMessage("Accion fallida");
            res.setStatus(400);
        }
        return res;
    }


}
