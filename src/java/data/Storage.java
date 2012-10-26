/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.*;

/**
 *
 * @author christianlinde
 */
public class Storage {
    
    /* should be thread safe too: http://www.theserverside.de/singleton-pattern-in-java/ */
    private static Storage instance = new Storage();
    
    private HashMap<Integer, Product> products;
    private HashMap<Integer, User> users;
    
    private void addDefaultData() {
        //add some users
        //add some products
    }

    private Storage() {
        products = new HashMap<Integer, Product>();
        users = new HashMap<Integer, User>();
        
        addDefaultData();
    }
    
    public static Storage getInstance() {
        return instance;
    }
}
