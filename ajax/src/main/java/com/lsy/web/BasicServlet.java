package com.lsy.web;

import com.google.gson.Gson;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2016/12/9 0009.
 */
/*
*
 * 给客户端响应一个JSON数据
 * @param object 要被转成JSON的对象
 * @param response
 * @throws IOException
*/
public class BasicServlet extends HttpServlet {
    public void renderJson(Object object, HttpServletResponse response) throws IOException {
        String json=new Gson().toJson(object);
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");

        PrintWriter out=response.getWriter();
        out.print(json);
        out.flush();
        out.close();
    }


}
