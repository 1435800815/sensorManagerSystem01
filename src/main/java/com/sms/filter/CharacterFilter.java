package com.sms.filter;

import javax.servlet.*;
//import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.Objects;

//@WebFilter(filterName = "CharacterEncodingFilter", urlPatterns = "/*")
public class CharacterFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setCharacterEncoding("utf-8");
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
