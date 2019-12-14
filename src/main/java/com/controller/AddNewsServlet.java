package com.controller;

import com.service.NewsService;
import com.service.factory.NewsServiceFactory;
import com.service.factory.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/add-news")
public class AddNewsServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new NewsServiceFactory();
    private NewsService newsService = serviceFactory.getNewsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/backstage/add-news.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String content = req.getParameter("content");

        newsService.addNews(title,author,content);
        resp.sendRedirect("/news-manage");
    }
}
