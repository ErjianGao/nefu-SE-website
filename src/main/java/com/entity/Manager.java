package com.entity;

import javax.xml.crypto.Data;

public class Manager {
    private int name;
    private String userName;
    private String password;
    private Data loginTime;

    public int getId() {
        return name;
    }

    public void setName(int name) {
        this.name = name;
    }

    public String getuserName() {
        return userName;
    }

    public void setuserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Data getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Data loginTime) {
        this.loginTime = loginTime;
    }
}
