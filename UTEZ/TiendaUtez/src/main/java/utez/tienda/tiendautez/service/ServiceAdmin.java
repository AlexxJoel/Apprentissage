package utez.tienda.tiendautez.service;

import utez.tienda.tiendautez.administrator.model.AdminBean;
import utez.tienda.tiendautez.administrator.model.AdminDao;
import utez.tienda.tiendautez.utils.ResultAction;

import java.util.List;

public class ServiceAdmin {
    AdminDao adminDao = new AdminDao();
    ResultAction result = null;

    //--------------------Login admin--------------------------
    public AdminBean loginAdmin(AdminBean admin){
        return  adminDao.loginAdmin(admin);
    }

    //--------------------Read admins--------------------------
    public List<AdminBean> watchAdmins(){
        return  adminDao.watchAdmins();
    }
    //--------------------Create admins--------------------------
    public  ResultAction registerAdmin(AdminBean admin){
        if (adminDao.registerAdmin(admin)){
            result = new ResultAction<>("Persona registrada correctamente",200,true);
        }else {
            result = new ResultAction<>("Acción fallida",500,true);
        }
        return result;
    }

    //--------------------Find One admins--------------------------
    public AdminBean findOneAdmin(String id){
        return  adminDao.findOneAdmin(id);
    }

    //--------------------Update admins--------------------------
    public  ResultAction updateAdmin(AdminBean admin){
        if (adminDao.updateAdmin(admin)){
            result = new ResultAction<>("Persona actualizada correctamente",200,true);
        }else {
            result = new ResultAction<>("Acción fallida",500,true);
        }
        return result;
    }

    //--------------------Delete admins--------------------------
    public  ResultAction deleteAdmin(int id){
        if (adminDao.deleteAdmin(id)){
            result = new ResultAction<>("Persona eliminada correctamente",200,true);
        }else {
            result = new ResultAction<>("Acción fallida",500,true);
        }
        return result;
    }

}
