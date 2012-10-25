/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author christianlinde
 */
public class DataStore {

  private String name;
  private Double price;
  private String description;
  private Integer artNr;
  private Integer count;

  public Double getPrice() {
    return price;
  }

  public void setPrice(Double price) {
    this.price = price;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Integer getArtNr() {
    return artNr;
  }

  public void setArtNr(Integer artNr) {
    this.artNr = artNr;
  }

  public Integer getCount() {
    return count;
  }

  public void setCount(Integer count) {
    this.count = count;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public DataStore() {
    this.name = null;
  }
}
