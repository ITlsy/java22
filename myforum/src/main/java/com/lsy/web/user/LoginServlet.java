package com.lsy.web.user;

import com.google.common.collect.Maps;
import com.lsy.entitiy.User;
import com.lsy.exception.ServiceException;
import com.lsy.service.UserService;
import com.lsy.web.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

/**
 * Created by Administrator on 2016/12/15 0015.
 */
@WebServlet("/login")
public class LoginServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //判断当前是否有用户
        req.getSession().removeAttribute("curr_user");
        forward("user/login.jsp",req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password=req.getParameter("password");

        //获取客户端的IP地址
        String ip=req.getRemoteAddr();
        Map<String,Object> result= Maps.newHashMap();
        UserService userService=new UserService();
        try {
            User user = userService.login(username, password, ip);

            //将登录成功的用户放入Session
            HttpSession session = req.getSession();
            session.setAttribute("curr_user", user);
            result.put("state","success");
        }catch (ServiceException e){
            result.put("state","error");
            result.put("message",e.getMessage());

        }
        renderJson(result,resp);


    }
}