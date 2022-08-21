package utez.tienda.tiendautez.products.model;

public class ProductoCombinacionesBean {


    private int id_combinations;
    private String color;
    private String size;
    private double price;
    private int pieces;
    private int products_id_products;

    public ProductoCombinacionesBean() {
    }

    public ProductoCombinacionesBean(int id_combinations, String color, String size, double price, int pieces, int products_id_products) {
        this.id_combinations = id_combinations;
        this.color = color;
        this.size = size;
        this.price = price;
        this.pieces = pieces;
        this.products_id_products = products_id_products;
    }


    public ProductoCombinacionesBean(String color, String size, double price, int pieces) {
        this.color = color;
        this.size = size;
        this.price = price;
        this.pieces = pieces;
    }


    public int getId_combinations() {
        return id_combinations;
    }

    public void setId_combinations(int id_combinations) {
        this.id_combinations = id_combinations;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getPieces() {
        return pieces;
    }

    public void setPieces(int pieces) {
        this.pieces = pieces;
    }

    public int getProducts_id_products() {
        return products_id_products;
    }

    public void setProducts_id_products(int products_id_products) {
        this.products_id_products = products_id_products;
    }


    //__________________________________________________

    @Override
    public String toString() {
        return "ProductoCombinacionesBean{" +
                "id_combinations=" + id_combinations +
                ", color='" + color + '\'' +
                ", size=" + size +
                ", price=" + price +
                ", pieces=" + pieces +
                ", products_id_products=" + products_id_products +
                '}';
    }
}
