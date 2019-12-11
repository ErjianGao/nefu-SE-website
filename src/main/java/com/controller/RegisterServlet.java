package com.controller;

import com.service.factory.ManagerServiceFactory;
import com.service.factory.ServiceFactory;
import com.service.ManagerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new ManagerServiceFactory();
    private ManagerService managerService = serviceFactory.getManagerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("pwd");
        String passwordAgain = req.getParameter("pwd-again");

        if(!password.equals(passwordAgain)) {
            req.getSession().setAttribute("error","两次输入的密码不同");
            req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req,resp);
            return;
        }

        managerService.addManager(userName, password);
        resp.sendRedirect("/login");
    }
}
