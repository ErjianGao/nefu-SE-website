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

@WebServlet("/news-detail")
public class NewsDetailServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new NewsServiceFactory();
    private NewsService newsService = serviceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("news-id"));
        News news = newsService.getNews(id);

        req.setAttribute("news",news);

        req.getRequestDispatcher("/WEB-INF/jsp/backstage/news-detail.jsp").forward(req,resp);
    }
}
