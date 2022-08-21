package utez.tienda.tiendautez.Offers;

public class OffersBean {
    private int id_offers;
    private String name;
    private String start_date;
    private String end_date;
    private  String banner; //Url de la clase ,
    private  int discount; //Url de la clase ,

    public OffersBean() {
    }

    public int getId_offers() {
        return id_offers;
    }

    public void setId_offers(int id_offers) {
        this.id_offers = id_offers;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }
}

