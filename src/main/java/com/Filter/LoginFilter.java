package com.Filter;

import com.entity.Manager;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/backstage")
public class LoginFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        Manager manager =  (Manager)req.getSession().getAttribute("manager");
        if(manager == null) {
            res.sendRedirect("/login");
        } else {
            chain.doFilter(req,res);
        }
    }
}
