/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package useCase;

import data.Product;
import data.Storage;
import exceptions.StorageException;

/**
 *
 * @author christianlinde
 */
public class CaseProduct {

  public int addProduct(String name, float price, String description, String manufactorer) throws StorageException {
    return data.Storage.getInstance().addProduct(new Product(name, price, description, manufactorer));
  }

  public String getName( int id ) {
    if ( data.Storage.getInstance().getProductById(id).getName() != null ) {
      return data.Storage.getInstance().getProductById(id).getName();
    } else {
      return null;
    }
  }
  
  public float getPrice ( int id ) {
    if ( data.Storage.getInstance().getProductById(id).getPrice() != -1 ) {
      return data.Storage.getInstance().getProductById(id).getPrice();
    } else {
      return -1;
    }
  }
  
  public String getDescription ( int id ) {
    if ( data.Storage.getInstance().getProductById(id).getDescription() != null ) {
      return data.Storage.getInstance().getProductById(id).getDescription();
    } else {
      return null;
    }
  }
  
  public String getManufacturer ( int id ) {
    if ( data.Storage.getInstance().getProductById(id).getManufacturer() != null ) {
      return data.Storage.getInstance().getProductById(id).getManufacturer();
    } else {
      return null;
    }
  }
  
}
