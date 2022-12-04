package controller;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.*;
import java.util.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ejlu1
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class LoginServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext context = getServletContext();
        String path = "/login/loginCredentials.txt";
        InputStream is = context.getResourceAsStream(path);
	BufferedReader br = new BufferedReader (new InputStreamReader(is)); // BufferedReader reads from input file
	Map<String, String> userLogin = new HashMap<>();
	String str, str2 = "";
        //puts contents of txt file into HashMap
        for(int x = 1;(str = br.readLine()) != null; x++){ 
            if(x % 2 != 0)
                str2 = str; // if odd number line (username) stores into string
            else
                userLogin.put(str2, str); // if even number line (password) puts str2(username) into key and password into value
            } 
        br.close();    
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        try {
            if(userLogin.get(username).equals(password)) {
                HttpSession session = request.getSession();
                session.setAttribute("newUsername",username);
                response.sendRedirect("welcome.jsp");
                System.out.print(session.getAttribute("newUsername"));
            }
            else {
                response.sendRedirect("index.jsp");
            }
        }
        catch(NullPointerException npe) {
             response.sendRedirect("index.jsp");
        }
    }
}
