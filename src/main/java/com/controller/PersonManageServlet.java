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

@WebServlet("/person-manage")
public class PersonManageServlet extends HttpServlet {
    private ServiceFactory serviceFactory = new ManagerServiceFactory();
    private ManagerService managerService = serviceFactory.getManagerService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/backstage/person-manage.jsp").forward(req,resp);
    }
}
