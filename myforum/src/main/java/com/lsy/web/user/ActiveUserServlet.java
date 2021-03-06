package com.lsy.web.user;

import com.lsy.exception.ServiceException;
import com.lsy.service.UserService;
import com.lsy.web.BaseServlet;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/active")
public class ActiveUserServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String token=req.getParameter("_");
        if(StringUtils.isEmpty(token)){
            resp.sendError(404);
        }else{
            UserService userService=new UserService();
            try {
                userService.activeUser(token);
                forward("user/active_success.jsp", req, resp);
            }catch (ServiceException e){
                req.setAttribute("message",e.getMessage());
                forward("user/active_error.jsp",req,resp);

            }
        }
    }
}
