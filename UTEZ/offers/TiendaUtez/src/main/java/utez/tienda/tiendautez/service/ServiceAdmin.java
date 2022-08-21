package utez.tienda.tiendautez.service;


import utez.tienda.tiendautez.administrator.model.AdminBean;
import utez.tienda.tiendautez.administrator.model.BeanAdmin;
import utez.tienda.tiendautez.administrator.model.DaoAdmin;
import utez.tienda.tiendautez.utils.ResultAction;

import java.util.List;

public class ServiceAdmin {
    DaoAdmin daoAdmin= new DaoAdmin();

    public AdminBean loginAdmin(AdminBean admin){
        return  daoAdmin.loginAdmin(admin);
    }

    public List<BeanAdmin> showAdmins() {
        return daoAdmin.showAdmins(); //este metodo viene desde el dao
    }
    public ResultAction saveAdmin(BeanAdmin admin){
        ResultAction result = new ResultAction();
        if (daoAdmin.saveAdmin(admin)){
            result.setResult(true);
            result.setMessage("Admin registrado correctamente");
            result.setStatus(200);
        }else{
            result.setResult(false);
            result.setMessage("Error al registrar admin");
            result.setStatus(400);
        }
        return result;
    }

    public BeanAdmin findAdmin(Long id_admins){
        return daoAdmin.findAdmin(id_admins);
    }

    public ResultAction updateAdmin(BeanAdmin admin){
        ResultAction result = new ResultAction();
        if (daoAdmin.updateAdmin(admin)){
            result.setResult(true);
            result.setMessage("Admin modificado correctamente");
            result.setStatus(200);
        }else{
            result.setResult(false);
            result.setMessage("Error al modificar admin");
            result.setStatus(400);
        }
        return result;
    }
    public ResultAction deleteAdmin(Long id_admins){
        ResultAction result = new ResultAction();
        if (daoAdmin.deleteAdmin(id_admins)) {
            result.setResult(true);
            result.setMessage("Persona Eliminada Correctamente");
            result.setStatus(200);
        }else {
            result.setResult(false);
            result.setMessage("Error al Eliminar Persona");
            result.setStatus(400);
        }
        return result;
    }
}
