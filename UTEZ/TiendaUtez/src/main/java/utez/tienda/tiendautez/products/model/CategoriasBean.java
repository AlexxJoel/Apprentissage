package utez.tienda.tiendautez.products.model;

public class CategoriasBean {
    private int  id_category;
    private String name;

    public CategoriasBean() {
    }

    public CategoriasBean(int id_category, String name) {
        this.id_category = id_category;
        this.name = name;
    }

    public int getId_category() {
        return id_category;
    }

    public void setId_category(int id_category) {
        this.id_category = id_category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    //_______________________________________________________________________


    @Override
    public String toString() {
        return "CategoriasBean{" +
                "id_category=" + id_category +
                ", name='" + name + '\'' +
                '}';
    }
}
