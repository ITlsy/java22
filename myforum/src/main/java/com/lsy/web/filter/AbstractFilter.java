package com.lsy.web.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by Administrator on 2016/12/17 0017.
 */
public abstract class AbstractFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    }

    @Override
    public void destroy() {

    }
}
