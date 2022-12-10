package model;

public class UserCart {
    private Product product = new Product();
    private int orders;
    public UserCart(){
    }
    public UserCart(Product product, int orders) {
        this.product = product;
        this.orders = orders;
    }
    
    public Product getProduct() {
        return this.product;
    }
    public int getOrder() {
        return this.orders;
    }
}
