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
public class Cart {

    private List<ProductInCart> productsInCart = new ArrayList<ProductInCart>();

    public Cart() {
    }
    
    public Cart(Cart c) {
        this.productsInCart = c.getProductsInCart(); // deep copy
    }

    public List<ProductInCart> getProductsInCart() {
        List<ProductInCart> clone = new ArrayList<ProductInCart>(productsInCart.size());
        for (ProductInCart item : productsInCart) {
            clone.add(new ProductInCart(item));
        }
        return clone;
    }
    
    
}
