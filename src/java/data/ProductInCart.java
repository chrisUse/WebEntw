/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author delbertooo
 */
public class ProductInCart {

    private int count;
    private int productId;

    public ProductInCart(int count, int productId) {
        this.count = count;
        this.productId = productId;
    }

    public ProductInCart(ProductInCart pic) {
        this.count = pic.count;
        this.productId = pic.productId;
    }
}
