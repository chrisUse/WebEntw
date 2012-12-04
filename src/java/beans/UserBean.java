/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import data.*;
import exceptions.DuplicateEntryException;
import exceptions.StorageException;
import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.application.FacesMessage;
import javax.faces.bean.*;
import javax.faces.validator.*;

/**
 * @author delbertooo
 */
@ManagedBean
@SessionScoped
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
    
    public void validateMail() {
        if (Storage.getInstance().getUserIdByMail(this.mail) != null) {
            FacesMessage fm = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Diese E-Mail Adresse ist bereits registriert.", null);
            throw new ValidatorException(fm);
        }
    }

    public String completeRegistration() {
        try {
            Storage.getInstance().addUser(new User(false, this.name, this.password, this.mail, this.street, this.city));
        } catch (DuplicateEntryException ex) {
            FacesMessage fm = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Diese E-Mail Adresse ist bereits registriert.", null);
            throw new ValidatorException(fm);
        } catch (StorageException ex) {
            FacesMessage fm = new FacesMessage(FacesMessage.SEVERITY_FATAL, "Unbekannter Fehler.", null);
            throw new ValidatorException(fm);
        }
        /** @todo registrierung leeren **/
        return "RegisterComplete";
    }
}
