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
import java.util.Collections;
import java.util.List;

@WebServlet("/news-manage")
public class NewsManageServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new NewsServiceFactory();
    private NewsService newsService = serviceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> newsList = newsService.listNews();

        Collections.reverse(newsList);

        req.setAttribute("newsList", newsList);
        req.getRequestDispatcher("/WEB-INF/jsp/backstage/news-manage.jsp").forward(req,resp);
    }
}
