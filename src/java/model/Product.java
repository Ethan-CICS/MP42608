/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ejlu1
 */
public class Product {
    
    private String model;
    private double rating;
    private int reviews;
    private int stock;
    private String desc;
    private String image;
    private double price;
    private String type;
    private String thumbnail;
    
    public Product(){    
    }
    public Product(String model, double rating, int reviews, int stock, String desc, String image, double price, String type, String thumbnail){
        this.model =  model;
        this.rating = rating;
        this.reviews = reviews;
        this.stock = stock;
        this.desc = desc;
        this.image = image;
        this.price = price;
        this.type = type;
        this.thumbnail = thumbnail;
    }
    
    //getters
    public String getModel(){
        return this.model;
    }
    public double getRating(){
        return this.rating;
    }
    public int getReviews(){
        return this.reviews;
    }
    public int getStock(){
        return this.stock;
    }
    public String getDesc(){
        return this.desc;
    }
    public String getImage(){
        return this.image;
    }
    public double getPrice(){
        return this.price;
    }
    public String getType() {
        return this.type;
    }
    public String getThumb() {
        return this.thumbnail;
    }
    
    public void addStock(int sold) {
        this.stock += sold; 
    }
    
    @Override
    public String toString() {
        return "Model: " + getModel() + "\nRating: " + getRating() + "\nReviews: " + getReviews() + "\nStock: " + getStock() + "\nDesc: " + getDesc() + "\nImage link: " + getImage() + "\nPrice: " + getPrice() + "\nType: " + getType();
    }
}
