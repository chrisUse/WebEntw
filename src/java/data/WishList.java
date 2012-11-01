/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.List;

/**
 * Provides a simple wish list for the user. Stores the products in the list 
 * products. Provides methods to add and remove products to the list.
 * @author Marco Wilhelm, delbertooo
 */
public class WishList {
    private List<Product> products;
    
    /** 
     * Adds a product to the wish list.
     * @param product the product which should get added
     * @return a boolean value whether the product could be added or not
     */
    public boolean addProduct(Product product){
        return products.add(product);
    }

    /**
     * Adds a product to the wish list.
     * @param id The id of the product which should get added.
     * @return A boolean value whether the product could be added or not.
     */
    public boolean addProduct(int id){
        return products.add(Storage.getInstance().getProductById(id));
    }
    
    /**
     * Removes a product from the wish list.
     * @param product The product which should get removed.
     * @return A boolean value whether the product could be removed or not.
     */
    public boolean removeProduct(Product product){
        return products.remove(product);
    }
    
    /**
     * Removes a product from the wish list.
     * @param id The ID of the product which should get removed.
     * @return A boolean value whether the product could be removed or not.
     */
    public boolean removeProduct(int id){
        return products.remove(Storage.getInstance().getProductById(id));
    }

}
