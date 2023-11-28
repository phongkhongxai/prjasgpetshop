/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author truon
 */
public class Cart {
 

    public Cart() {
         cart = new ArrayList<>();
    }

     
    private List<ProductDTO> cart;

     

    public Cart(List<ProductDTO> cart) {
        this.cart = cart;
    }

    public List<ProductDTO> getCart() {
        return cart;
    }

    public void setCart(List<ProductDTO> cart) {
        this.cart = cart;
    }

    public boolean addCart(ProductDTO mobi) {
        return cart.add(mobi);
    }

    public void removeCart(String proid) {
        for (ProductDTO pro : cart) {
            if(pro.getId().equals(proid)){
                cart.remove(pro);
            }
        }
    }

    public void update(String proid, int newQuantity) {
        for (ProductDTO pro : cart) {
            if (pro.getId().equals(proid)) {
                pro.setQuantityOf(newQuantity);
                break;
            }
        }
    }

    public ProductDTO checkCart(String id) {
        for (ProductDTO mobile : cart) {
            if (mobile.getId().equals(id)) {
                return mobile;
            }
        }
        return null;
    }
 

}
