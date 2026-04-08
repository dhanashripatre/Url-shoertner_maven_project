package com.urlapp;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class RedirectServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String code = request.getParameter("code");

        String url = UrlStore.getUrl(code);

        if (url != null) {
            response.sendRedirect(url);
        } else {
            response.getWriter().println("Invalid URL");
        }
    }
}
