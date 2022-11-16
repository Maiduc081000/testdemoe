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
public class User {
    private long id;
    private String user;
    private String password;
    private String name;
    private String phone;
    private String address;
    private int isBuy;
    private int isAdmin;

    public User() {
    }

    public User(long id, String user, String password, String name, String phone, String address, int isBuy, int isAdmin) {
        this.id = id;
        this.user = user;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.isBuy = isBuy;
        this.isAdmin = isAdmin;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsBuy() {
        return isBuy;
    }

    public void setIsBuy(int isBuy) {
        this.isBuy = isBuy;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", user=" + user + ", password=" + password + ", name=" + name + ", phone=" + phone + ", address=" + address + ", isBuy=" + isBuy + ", isAdmin=" + isAdmin + '}';
    }
    
}
