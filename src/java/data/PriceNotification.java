/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 * Provides a simple wish list for the user. Stores the products in the list 
 * products. Provides methods to add and remove products to the list.
 * @author Stephan Stenzel
 */
public class PriceNotification {

    private float price;

    public PriceNotification() {
    }   

    public float getPrice() {
        return price;
    }

    public void setPrice(float nPrice) {
        price = nPrice;
    }
}
