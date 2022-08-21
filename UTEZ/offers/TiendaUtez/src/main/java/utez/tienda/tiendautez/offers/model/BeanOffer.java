package utez.tienda.tiendautez.offers.model;

import java.util.Date;

public class BeanOffer {

    private Long id_offers;
    private String name;
    private int discount;
    private Date start_date;
    private Date end_date;
    private String banner;

    public BeanOffer() {
    }

    public BeanOffer(Long id_offers, String name, int discount, Date start_date, Date end_date, String banner) {
        this.id_offers = id_offers;
        this.name = name;
        this.discount = discount;
        this.start_date = start_date;
        this.end_date = end_date;
        this.banner = banner;
    }

    public Long getId_offers() {
        return id_offers;
    }

    public void setId_offers(Long id_offers) {
        this.id_offers = id_offers;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }
//--------------------------------Reeed all variables-------------------


    @Override
    public String toString() {
        return "BeanOffer{" +
                "id_offers=" + id_offers +
                ", name='" + name + '\'' +
                ", discount=" + discount +
                ", start_date=" + start_date +
                ", end_date=" + end_date +
                ", banner='" + banner + '\'' +
                '}';
    }
}
