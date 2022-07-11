package model;

import java.sql.Date;

public class Apartment {
    private int idCH;
    private String address;
    private double price;
    private double area;
    private String picture;
    private String status;
    private String description;
    private Date datePost;
    private String classify;
    private Customer customer;
    private Sector sector;
    public Apartment() {
    }

    public Apartment(int idCH, String address, double price, double area, String picture, String status, String description, Date datePost, String classify, Customer customer, Sector sector) {
        this.idCH = idCH;
        this.address = address;
        this.price = price;
        this.area = area;
        this.picture = picture;
        this.status = status;
        this.description = description;
        this.datePost = datePost;
        this.classify = classify;
        this.customer = customer;
        this.sector = sector;
    }

    public int getIdCH() {
        return idCH;
    }

    public void setIdCH(int idCH) {
        this.idCH = idCH;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePost() {
        return datePost;
    }

    public void setDatePost(Date datePost) {
        this.datePost = datePost;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Sector getSector() {
        return sector;
    }

    public void setSector(Sector sector) {
        this.sector = sector;
    }
}
