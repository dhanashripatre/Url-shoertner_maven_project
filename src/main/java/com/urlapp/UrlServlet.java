package com.urlapp;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class UrlServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String longUrl = request.getParameter("url");

        String shortKey = UrlStore.shorten(longUrl);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<h2>Short URL Created</h2>");
        out.println("Short URL: <a href='go?code=" + shortKey + "'>" + shortKey + "</a>");
    }
}
