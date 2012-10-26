/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 *
 * @author delbertooo
 */
public class Product {
    private int id = 0;
    private String name;
    private float price;
    private String description;
    private String manufacturer;
    
    private List<Comment> comments = new ArrayList<Comment>();

    public Product(String name, float price, String description, String manufacturer) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.manufacturer = manufacturer;
    }
    
    public Product(Product p) {
        this.id = p.id;
        
        this.name = p.name;
        this.price = p.price;
        this.description = p.description;
        this.manufacturer = p.manufacturer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
}
