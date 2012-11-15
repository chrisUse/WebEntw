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
public class Coupon {

    private String code;
    private float value;

    public Coupon() {
    }   

    public String getCode() {
        return code;
    }

    public void setCode(String nCode) {
        code = nCode;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float nValue) {
        value = nValue;
    }
}
