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
import java.util.stream.Collectors;

@WebServlet("/update-person")
public class UpdatePersonServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new ManagerServiceFactory();
    private ManagerService managerService = serviceFactory.getManagerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/backstage/update-person.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Manager oldManager = (Manager) req.getSession().getAttribute("manager");

        String newName = req.getParameter("newname");
        String password = req.getParameter("pwd");
        String passwordAgain = req.getParameter("pwd-again");
        String url = null;

        if(!password.equals(passwordAgain)) {
            req.setAttribute("password-error","两次输入的密码不同");
            req.getRequestDispatcher("/WEB-INF/jsp/backstage/person-manage.jsp").forward(req,resp);
            url = "/update-person";
        }

        List<Manager> managers = managerService.listManagers()
                .stream()
                .filter(manager -> !manager.getUserName().equals(oldManager.getUserName()))
                .collect(Collectors.toList());

        for (Manager manager : managers) {
            if (manager.getUserName().equals(newName)) {
                req.setAttribute("id-error", "此账号已经存在！");
                url = "/update-person";
            }
        }

        //如果url没有被修改，则修改成功，进入信息管理页面
        if(url == null) {
            oldManager.setUserName(newName);
            oldManager.setPassword(password);

            managerService.updateManager(oldManager);
            url = "/person-manage";
        }

        resp.sendRedirect(url);
    }
}
