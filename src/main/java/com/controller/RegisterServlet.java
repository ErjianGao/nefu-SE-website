package com.controller;

import com.entity.Manager;
import com.service.factory.ManagerServiceFactory;
import com.service.factory.ServiceFactory;
import com.service.ManagerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

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
        String url = null;

        if(!password.equals(passwordAgain)) {
            req.setAttribute("password-error","两次输入的密码不同");
            req.getRequestDispatcher("/WEB-INF/jsp/register.jsp").forward(req,resp);
            url = "/register";
        }

        List<Manager> managers = managerService.listManagers();
        for (Manager manager : managers) {
            if (manager.getUserName().equals(userName)) {
                req.setAttribute("id-error", "此账号已经存在！");
                url = "/register";
            }
        }

        //如果url没有被修改，则注册成功，进入登录界面
        if(url == null) {
            managerService.addManager(userName, password);
            url = "/login";
        }

        resp.sendRedirect(url);
    }
}
