/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author christianlinde
 */
public class Storage {
    
    /* should be thread safe too: http://www.theserverside.de/singleton-pattern-in-java/ */
    private static Storage instance = new Storage();
    
    private List<Product> products;
    private List<User> users;
    
    private void addDefaultData() {
        //users.add(...);
        //products.add(...);
    }

    private Storage() {
        products = new ArrayList<Product>();
        users = new ArrayList<User>();
        
        addDefaultData();
    }
    
    public static Storage getInstance() {
        return instance;
    }
}
