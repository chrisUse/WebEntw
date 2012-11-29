/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 * Provides a simple wish list for the user. Stores the products in the list 
 * products. Provides methods to add and remove products to the list.
 * @author Marco Wilhelm, delbertooo
 */
public class WishList {
    private List<Product> products = new ArrayList<Product>();

    public WishList() {
    }
    
    public WishList(WishList l) {
        this.products = l.getProducts();
    }
    
    
    public List<Product> getProducts() {
        List<Product> clone = new ArrayList<Product>(products.size());
        for (Product item : products) {
            clone.add(new Product(item));
        }
        return clone;
    }

    /**
     * Adds a product to the wish list.
     * @param id The id of the product which should get added.
     * @return A boolean value whether the product could be added or not.
     */
    public boolean addProduct(int id){
        if(!contains(id)){
            return products.add(Storage.getInstance().getProductById(id));
        }
        return false;
    }
    
    /**
     * Removes a product from the wish list.
     * @param id The ID of the product which should get removed.
     * @return A boolean value whether the product could be removed or not.
     */
    public boolean removeProduct(int id){
        for(int i=0; i<products.size(); i++){
            if(products.get(i).getId() == id)
            {
                products.remove(i);
                return true;
            }
        }
        return false;
        //return products.remove(Storage.getInstance().getProductById(id));
    }
    
    /**
     * Checks whether a product is in the wish list or not
     * @param id the ID to check against
     * @return true, if the product is in the wish list already; else false
     */
    public boolean contains(int id){
        boolean ret = false;
        for(int i=0; i<products.size(); i++){
            if(products.get(i).getId() == id)
                ret = true;
        }
        return ret;
        
        //return products.contains(Storage.getInstance().getProductById(id));
    }

}
