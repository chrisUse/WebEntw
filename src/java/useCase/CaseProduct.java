/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package useCase;

import data.Product;
import exceptions.StorageException;

/**
 *
 * @author christianlinde
 */
public class CaseProduct {
  
  public void addProduct (  ) throws StorageException {
    data.Storage.getInstance().addProduct(new Product("TestPro1", 23, "Das ist das neue TestP 1", "Von mir blub"));
  }
  
}
