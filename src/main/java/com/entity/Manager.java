package com.entity;

import java.sql.Timestamp;
import java.util.Date;

public class Manager {
    private int id;
    private String userName;
    private String password;
    private Timestamp insertTime;

    public Manager(int id, String userName, String password, Timestamp insertTime) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.insertTime = insertTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Timestamp getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Timestamp insertTime) {
        this.insertTime = insertTime;
    }
}
