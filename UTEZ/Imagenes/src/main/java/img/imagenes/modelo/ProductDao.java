package img.imagenes.modelo;

import img.imagenes.utils.ConexionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao  {
    Connection con = new ConexionMysql().getConexion();
    PreparedStatement ps;
    ResultSet rs;
    int r = 0;

    public int agregar(ProductoBean p) throws SQLException {
      try {
          String sql = "INSERT INTO producto(Nombre, Ruta) VALUES (?,?)";
          ps = con.prepareStatement(sql);
          ps.setString(1,p.getNombre());
          ps.setString(2,p.getRuta());
          ps.executeUpdate();
      }catch (SQLException e){
          System.out.println(e);
      }


     return r;
    }

    public List<ProductoBean> listar (){
        List<ProductoBean> lista = new ArrayList<>();
        try {
            String sql = "SELECT * FROM producto ";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()){
                ProductoBean p = new ProductoBean();
                p.setId(rs.getInt("id_Producto"));
                p.setNombre(rs.getString("Nombre"));
                p.setRuta(rs.getString("Ruta"));
                lista.add(p);
            }
        }catch (SQLException e){
            System.out.println(e);
        }


        return lista;
    }
}
