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
public class Product extends StorageData {

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
    
    public String getName () {
      return name;
    }

    public List<Comment> getComments() {
        List<Comment> clone = new ArrayList<Comment>(comments.size());
        for (Comment item : comments) {
            clone.add(new Comment(item));
        }
        return clone;
    }
    
    public void addComment(Comment c) {
        comments.add(c);
    }

    public Product(Product p) {
        this.id = p.id;

        this.name = p.name;
        this.price = p.price;
        this.description = p.description;
        this.manufacturer = p.manufacturer;
        
        this.comments = p.getComments(); // deep copy
    }

    @Override
    public ICopyable getCopy() {
        return new Product(this);
    }    
}
