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
    private int autoIncProducts = 0;
    private HashMap<Integer, User> users;
    private int autoIncUsers = 0;

    private void addDefaultData() {
        //add some users
        addUser(new User(true, "Admin", "password", "admin@example.com", "Admin Street", "Admin Town"));

        //add some products
    }

    public void addUser(User u) {
        u.setId(++autoIncUsers);

        synchronized (Storage.class) {
            users.put(u.getId(), u);
        }
    }

    public User getUserById(int id) {
        synchronized (Storage.class) {
            return new User(users.get(id));
        }
    }

    public void setUser(User u) {
        synchronized (Storage.class) {
            users.put(u.getId(), u);
        }
    }

    public List<Integer> getUsersByName(String name) {
        List<Integer> res = new ArrayList<Integer>();
        synchronized (Storage.class) {
            for (Map.Entry<Integer, User> e : users.entrySet()) {
                if (e.getValue().getName().toLowerCase().equals(name.toLowerCase())) {
                    res.add(e.getKey());
                }
            }
        }
        return res;
    }
    
    public void addProduct(Product p) {
        p.setId(++autoIncProducts);

        synchronized (Storage.class) {
            products.put(p.getId(), p);
        }
    }

    public Product getProductById(int id) {
        synchronized (Storage.class) {
            return new Product(products.get(id));
        }
    }

    public void setProduct(Product u) {
        synchronized (Storage.class) {
            products.put(u.getId(), u);
        }
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
