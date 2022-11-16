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
public class Bill {
    private long id;
    private long id_bill;
    private long id_user;
    private double totalMoney;

    public Bill() {
    }

    public Bill(long id, long id_bill, long id_user, double totalMoney) {
        this.id = id;
        this.id_bill = id_bill;
        this.id_user = id_user;
        this.totalMoney = totalMoney;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getId_bill() {
        return id_bill;
    }

    public void setId_bill(long id_bill) {
        this.id_bill = id_bill;
    }

    public long getId_user() {
        return id_user;
    }

    public void setId_user(long id_user) {
        this.id_user = id_user;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public String toString() {
        return "Bill{" + "id=" + id + ", id_bill=" + id_bill + ", id_user=" + id_user + ", totalMoney=" + totalMoney + '}';
    }
}
