package com.lsy.web.user;

import com.lsy.entitiy.User;
import com.lsy.service.UserService;
import com.lsy.web.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/validate/email")
public class ValidateEmailServlet extends BaseServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email=req.getParameter("email");
        UserService userService=new UserService();
        User user=userService.findByEmail(email);

        if(user==null){
            renderText("true",resp);
        }else {
            renderText("false",resp);
        }
    }
}
