/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author delbertooo
 */
public class User extends StorageData {

    private boolean isAdmin;
    private String name;
    private String password;
    private String mail;
    private String street;
    private String city;
    private WishList wishList = new WishList();
    private Cart cart = new Cart();
    private PriceNotificationList priceNotificationList = new PriceNotificationList();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public User(boolean isAdmin, String name, String password, String mail, String street, String city) {
        this.isAdmin = isAdmin;
        this.name = name;
        this.password = password;
        this.mail = mail;
        this.street = street;
        this.city = city;
    }

    public User(User u) {
        this.id = u.id;

        this.isAdmin = u.isAdmin;
        this.name = u.name;
        this.password = u.password;
        this.mail = u.mail;
        this.street = u.street;
        this.city = u.city;

        this.wishList = u.getWishList(); // deep copy
        this.cart = u.getCart(); // deep copy
    }

    @Override
    public ICopyable getCopy() {
        return new User(this);
    }

    public WishList getWishList() {
        return new WishList(wishList);
    }
    
    public void setWishList(WishList wishList) {
        this.wishList = wishList;
    }

    public Cart getCart() {
        return new Cart(cart);
    }
}
