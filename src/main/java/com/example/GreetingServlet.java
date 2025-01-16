package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class GreetingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.getWriter().write("<h1>Hello, welcome to the Greeting Web App!</h1>");
    }
}
