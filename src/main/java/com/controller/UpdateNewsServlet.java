package com.controller;

import com.entity.News;
import com.service.NewsService;
import com.service.factory.NewsServiceFactory;
import com.service.factory.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update-news")
public class UpdateNewsServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new NewsServiceFactory();
    private NewsService newsService = serviceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("news-id"));
        News oldNews = newsService.getNews(id);

        req.setAttribute("news", oldNews);

        req.getRequestDispatcher("/WEB-INF/jsp/backstage/update-news.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("news-id"));
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String content = req.getParameter("content");

        News oldNews = newsService.getNews(id);

        oldNews.setTitle(title);
        oldNews.setAuthor(author);
        oldNews.setContent(content);

        newsService.updateNews(oldNews);
        resp.sendRedirect("/news-manage");
    }
}
