/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import data.Product;
import exceptions.StorageException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *(name = "caseProduct1")
 * @author christianlinde
 */
@ManagedBean
@RequestScoped
public class caseProduct {
  private String name;
  private float price;
  private String description;
  private String manufacturer;
  
  private int addProductID;
  
  public caseProduct () {
    this.name ="NewTestName";
  }

  public int addProduct(String name, float price, String description, String manufactorer) throws StorageException {
    return data.Storage.getInstance().addProduct(new data.Product(name, price, description, manufactorer));
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public float getPrice() {
    return this.price;
  }

  public String getDescription() {
    return this.description;
  }

  public String getManufacturer() {
    return this.manufacturer;
  }

  public void setPrice(float price) {
    this.price = price;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public void setManufacturer(String manufacturer) {
    this.manufacturer = manufacturer;
  }
  
  public void insertNewProduct () {
    try {
      this.addProductID = data.Storage.getInstance().addProduct(new Product (this.name, this.price, this.description, this.manufacturer));
    } catch (StorageException ex) {
      Logger.getLogger(caseProduct.class.getName()).log(Level.SEVERE, null, ex);
    }
  }
  
  public List<Product> getAllProducts () {
    return data.Storage.getInstance().getAllProducts();
  }
}
