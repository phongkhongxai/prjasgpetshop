/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author truon
 */
public class UserDTO {
    private String uID;
    private String username;
    private String password;
    private int isSeller;
     

    public UserDTO() {
    }

    public UserDTO(String uID, String username, String password, int isSeller) {
        this.uID = uID;
        this.username = username;
        this.password = password;
        this.isSeller = isSeller;
         
    }

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsSeller() {
        return isSeller;
    }

    public void setIsSeller(int isSeller) {
        this.isSeller = isSeller;
    }

     
    
    
    
}
