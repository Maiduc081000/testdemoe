/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demojava.model;

/**
 *
 * @author MND PC
 */
public class Cart {

    private long id;
    private int quanty;
    private double totalPrice;
    private long id_product;
    private Product product;

    public Cart() {
    }

    public Cart(long id,long id_product, int quanty, double totalPrice, Product product) {
        this.id = id;
        this.id_product = id_product;
        this.quanty = quanty;
        this.totalPrice = totalPrice;
        this.product = product;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getQuanty() {
        return quanty;
    }

    public void setQuanty(int quanty) {
        this.quanty = quanty;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public long getId_product() {
        return id_product;
    }

    public void setId_product(long id_product) {
        this.id_product = id_product;
    }

    @Override
    public String toString() {
        return "Cart{" + "id=" + id + ", quanty=" + quanty + ", totalPrice=" + totalPrice + ", id_product=" + id_product + ", product=" + product + '}';
    }
    
}
