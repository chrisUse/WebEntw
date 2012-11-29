/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import data.*;
import javax.faces.bean.*;

/**
 * @author delbertooo
 */
@ManagedBean
@SessionScoped
public class Session {

    private Integer currentUser = null;
    
    private String mail = null;
    private String password = null;

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

    public Session() {
    }

    public User getCurrentUser() {
        return this.currentUser == null ? null : Storage.getInstance().getUserById(this.currentUser);
    }
    
    public Integer login() {
        Integer uid = Storage.getInstance().getUserIdByMail(mail);
        if (uid == null || !Storage.getInstance().getUserById(uid).getPassword().equals(this.password)) {
            this.currentUser = null;
            return null;
        } 
        
        this.logout();
        this.currentUser = uid;
        
        return this.currentUser;
    }
    
    public void logout() {
        this.mail = null;
        this.password = null;
        this.currentUser = null;
    }
    
    
    
    
}
