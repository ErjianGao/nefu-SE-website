package com.controller;

import com.entity.Manager;
import com.service.ManagerService;
import com.service.factory.ManagerServiceFactory;
import com.service.factory.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new ManagerServiceFactory();
    private ManagerService managerService = serviceFactory.getManagerService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("pwd");
        String url = null;

        List<Manager> managers = managerService.listManagers();
        for (Manager manager : managers) {
            if (manager.getUserName().equals(userName)) {
                if (manager.getPassword().equals(password)) {
                    url = "/backstage";
                    //添加到当前会话中，用于LoginFilter过滤器进行过滤
                    req.getSession().setAttribute("manager", manager);
                } else {
                    req.getSession().setAttribute("error","密码错误！");
                }
            }
        }

        if(url == null) {
            req.getSession().setAttribute("error","没有此账号！");
            url = "/login";
        }
        resp.sendRedirect(url);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req,resp);
    }
}
