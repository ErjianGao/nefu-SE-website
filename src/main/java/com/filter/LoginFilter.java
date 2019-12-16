package com.filter;

import com.entity.Manager;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class LoginFilter extends HttpFilter {
    private List<String> filterUrls = List.of("/backstage", "/add-news","/delete-news","/news-detail","/news-manage","/person-manage","/update-news","/update-person");

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        if(req.getServletPath().equals("/login")) {
            chain.doFilter(req,res);
            return;
        }

        for (String filterUrl : filterUrls) {
            if (filterUrl.equals(req.getServletPath())) {
                Manager manager =  (Manager)req.getSession().getAttribute("manager");
                if(manager == null) {
                    //这里要注意如果一个函数中有多个请求转发或者是重定向的话，每次都需要在操作后return
                    res.sendRedirect("/login");
                    return;
                }
                else {
                    chain.doFilter(req,res);
                    return;
                }
            }
        }
        chain.doFilter(req,res);
    }
}
