package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class GreetingServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        GreetingHelper helper = new GreetingHelper();
        response.getWriter().write(helper.getGreetingMessage());
    }
}
