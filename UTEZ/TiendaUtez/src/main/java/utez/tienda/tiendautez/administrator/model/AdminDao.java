package utez.tienda.tiendautez.administrator.model;

import utez.tienda.tiendautez.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class AdminDao {


    Connection connect;
    PreparedStatement pst;
    ResultSet rs;

    private  final  String QUERY_LOGIN ="SELECT * FROM admin  INNER JOIN roles rol on admin.roles_id_roles=rol.id_roles WHERE admin.email=? AND admin.psw=?";

    private  final  String QUERY_CONSULT ="SELECT * FROM admin  INNER JOIN roles rol on admin.roles_id_roles=rol.id_roles";

    private  final  String QUERY_CONSULT_UNIQUE= "SELECT * FROM admin  INNER JOIN roles rol on admin.roles_id_roles=rol.id_roles WHERE id_admins=?";

    private  final  String QUERY_CREATE= "INSERT INTO admin ( username, psw, email, roles_id_roles) VALUES (?, ?, ?, ?)";

    private  final  String QUERY_UPDATE ="UPDATE admin SET username = ?, psw = ?, email = ?, roles_id_roles = ? WHERE admin.id_admins = ?";


    private  final  String QUERY_DELETE = "DELETE FROM admin WHERE id_admins=?";


    //-----------------------------------Login admins---------------------------------------------
    public AdminBean loginAdmin(AdminBean admin){
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_LOGIN);
            pst.setString(1, admin.getEmail());
            pst.setString(2, admin.getPsw());
            rs = pst.executeQuery();
            if (rs.next()){
                admin = new AdminBean(rs.getInt("id_admins"), rs.getString("username"), rs.getString("email"), rs.getInt("id_roles") ,rs.getString("rol"));
            }else  admin = new AdminBean();
        }catch (SQLException e){
            System.out.println(e);
        }finally {
            System.err.println("Cerrar conexion");
        }
        System.out.println(admin.getEmail()!=null);
        return admin;

    }



    //-----------------------------------Read admins---------------------------------------------
    public List<AdminBean> watchAdmins(){
        List<AdminBean> admins = new ArrayList<>();
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT);
            rs = pst.executeQuery();

            while (rs.next()) {

                AdminBean admin = new AdminBean(rs.getInt("id_admins"), rs.getString("username"), rs.getString("email"), rs.getInt("id_roles"), rs.getString("rol") );
                admins.add(admin);

            }

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
       /* for (int i=0; i<=admins.size()-1;i++){
            System.out.println(admins.get(i).toString());
        }*/
         return admins;
    }
    //----------------------------------Creat Admin-----------------------------------------------
    public boolean registerAdmin(AdminBean admin){
        boolean result = false;
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CREATE);
            pst.setString(1, admin.getUsername());
            pst.setString(2, admin.getPsw());

            pst.setString(3, admin.getEmail());
            pst.setInt(4, admin.getId_rol());
            result = pst.executeUpdate()==1 ;
           // System.err.println("Accion ->"+ result);

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        /*for (int i=0; i<=admins.size()-1;i++){
            System.out.println(admins.get(i).getUsername());
        }*/
        return result;
    }

    //----------------------------------Find one Admin-----------------------------------------------
    public AdminBean findOneAdmin(String id){
        AdminBean admin = null;
        try {
            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_CONSULT_UNIQUE);
            pst.setString(1, id);
            rs = pst.executeQuery();
            if (rs.next()){
                admin = new AdminBean(rs.getInt("id_admins"), rs.getString("username"), rs.getString("email"), rs.getInt("id_roles") ,rs.getString("rol"));
            }
            System.out.println(admin.toString());

        }catch (SQLException e){
            System.out.println(e);
        }finally {
            System.err.println("Cerrar conexion");
        }
        return admin;

    }

    //----------------------------------Update Admin-----------------------------------------------
    public boolean updateAdmin(AdminBean admin){
        boolean result = false;
        try {

            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_UPDATE);
            pst.setString(1, admin.getUsername());
            pst.setString(2, admin.getPsw());

            pst.setString(3, admin.getEmail());
            pst.setInt(4, admin.getId_rol());
            pst.setInt(5, admin.getIdAdmin());

            result = pst.executeUpdate()==1 ;
            // System.err.println("Accion ->"+ result);

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        System.out.println(result);

        return result;
    }

    //----------------------------------Delete Admin-----------------------------------------------
    public boolean deleteAdmin(int id){
        boolean result = false;
        try {

            connect= new ConexionMysql().getConexion();
            pst = connect.prepareStatement(QUERY_DELETE);
            pst.setInt(1, id);
            result = pst.executeUpdate()==1 ;
             System.err.println("Accion ->"+ result);

        }catch (SQLException e){
            e.printStackTrace();

        }finally{
            System.err.println("Cerrar sesion");
        }
        System.out.println(result);
        return result;

    }


    //-------------------------Prube-------------------------------------------------------------
   public static void main(String[] args) {

        //login
        //AdminBean dao = new AdminBean("root@utez.edu.mx","123");
        //new AdminDao().loginAdmin(dao);


        //Test search
        //new AdminDao().watchAdmins();

        //Test crete
      /* AdminBean dao = new AdminBean("AlexxJoel","joel@utez.edu.mx","123",2);
       Boolean res = new  AdminDao().registerAdmin(dao);
       System.out.println(res);*/

        // Test to find just one
       //new AdminDao().findOneAdmin("3");


        //test update
        /*AdminBean dao = new AdminBean(3,"Jose","mike@gmail.com",1,null);
        dao.setPsw("123456");
        Boolean res = new  AdminDao().updateAdmin(dao);
        System.out.println(res);*/

        //Test delete
        //new AdminDao().deleteAdmin(3);



  }

    /*public void msj(){
        System.out.println("Mensjae" + new Date());
    }
    public static void main(String[] args) {
        Timer timer = new Timer();
        TimerTask tarea = new TimerTask() {
            @Override
            public void run() {
                System.out.println("msj");
            }


        };
        timer.schedule( tarea , 0 ,1000);

    }*/
}
