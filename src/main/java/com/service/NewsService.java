package com.service;

import com.entity.News;

import java.util.List;

public interface NewsService {
    /**
     * 查询全部新闻
     * @return
     */
    public List<News> listNews();
    /**
     * 添加新闻
     * @param
     */
    public void addNews(String title, String author, String content);
    /**
     * 更新新闻
     * @param news
     * @return
     */
    public void updateNews(News news);

    /**
     * 基于ID获取指定新闻
     * @param id
     * @return
     */
    public News getNews(int id);

    /**
     * 基于ID删除新闻
     * @param id
     */
    public void removeNews(int id);
}
