package com.entity;

import java.sql.Timestamp;
import java.util.Date;

public class News {
    private int id;
    private String title;
    private String author;
    private String content;
    private Timestamp insertTime;

    public News(int id, String title, String author, String content, Timestamp insertTime) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.content = content;
        this.insertTime = insertTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Timestamp insertTime) {
        this.insertTime = insertTime;
    }
}
