/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 *
 * @author drubner, delbertooo
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
    
    public boolean addProduct(ProductInCart product)
    {
        return productsInCart.add(product);
    }
    
    public boolean removeProduct(int productId)
    {
        for(ProductInCart product:productsInCart)
            if(product.getId() == productId)
                return productsInCart.remove(product);
        
        return false;
    }
    
    public boolean changeQuantity(int productId, int quantity){
         for(ProductInCart product:productsInCart)
         {
            if(product.getId() == productId)
            {
                product.setCount(quantity);
                return true;
            }
         }
         
         return false;
    }
    
    public boolean increaseQuantity(int productId){
         for(ProductInCart product:productsInCart)
         {
            if(product.getId() == productId)
            {
                product.setCount(product.getCount() + 1);
                return true;
            }
         }
         return false;
    }
    
    public boolean decreaseQuantity(int productId){
         for(ProductInCart product:productsInCart)
         {
            if(product.getId() == productId)
            {
                if(product.getCount() > 0)
                    product.setCount(product.getCount() - 1);
                    
                return true;
            }
         }
         return false;
    }
}
