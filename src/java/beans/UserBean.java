/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import data.*;
import java.io.Serializable;
import javax.faces.bean.*;
import javax.faces.validator.*;

/**
 * @author delbertooo
 */
@ManagedBean
@RequestScoped
public class UserBean implements Serializable {
    private String name;
    private String password;
    private String mail;
    private String street;
    private String city;

    public UserBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    public String completeStepOne() {
        return "Register";
    }
}
