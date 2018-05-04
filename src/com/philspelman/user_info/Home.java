package com.philspelman.user_info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;

//@WebServlet(name = "Home", urlPatterns = {"/home"})
@WebServlet(name = "Home")
public class Home extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Writer out = response.getWriter();

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String favoriteLanguage = request.getParameter("favoriteLanguage");
        if (firstName == null) {
            firstName = "Unknown";
        }

        if (lastName == null) {
                    lastName = "Unknown";
            }

        if (favoriteLanguage == null) {
                favoriteLanguage = "Unknown";
            }




        System.out.println(request.getQueryString());


        response.setContentType("text/html");

        out.write("<H1>Request DENIED! HA!</H1>" );
        out.write("<h3>just kidding</h3>" );
        out.write("<h4>First: " + firstName + "</h4>");
        out.write("<h5>Last: " + lastName + "</h5>");
        out.write("<h5>Fave Lang: " + favoriteLanguage + "</h5>");

    }
}
