/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import exceptions.StorageException;
import javax.annotation.ManagedBean;

/**
 *
 * @author christianlinde
 */
@ManagedBean
public class CaseProduct {
  private String name;

  public int addProduct(String name, float price, String description, String manufactorer) throws StorageException {
    return data.Storage.getInstance().addProduct(new data.Product(name, price, description, manufactorer));
  }

  public String getName(int id) {/*
    if (data.Storage.getInstance().getProductById(id).getName() != null) {
      return data.Storage.getInstance().getProductById(id).getName();
    } else {
      return null;
    }*/
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public float getPrice(int id) {
    if (data.Storage.getInstance().getProductById(id).getPrice() != -1) {
      return data.Storage.getInstance().getProductById(id).getPrice();
    } else {
      return -1;
    }
  }

  public String getDescription(int id) {
    if (data.Storage.getInstance().getProductById(id).getDescription() != null) {
      return data.Storage.getInstance().getProductById(id).getDescription();
    } else {
      return null;
    }
  }

  public String getManufacturer(int id) {
    if (data.Storage.getInstance().getProductById(id).getManufacturer() != null) {
      return data.Storage.getInstance().getProductById(id).getManufacturer();
    } else {
      return null;
    }
  }
}
