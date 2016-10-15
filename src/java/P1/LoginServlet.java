/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package P1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import P1.LoginDao;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mat
 */
public class LoginServlet extends HttpServlet {

    private String message;

  public void init() throws ServletException
  {
      // Do required initialization
      message = "Hello World";
  }

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      doPost(request, response);
      /*// Set response content type
      response.setContentType("text/html");

      // Actual logic goes here.
      PrintWriter out = response.getWriter();
      out.println("<h1>" + message + "</h1>");*/
  }
  
  // Method to handle POST method request.
  public void doPost(HttpServletRequest request,
                     HttpServletResponse response)
      throws ServletException, IOException {
      
      PrintWriter out = response.getWriter();
      HttpSession session = request.getSession();
      
      String un = request.getParameter("uname");
      String pw = request.getParameter("pass");
      boolean status = false;  
      status = LoginDao.validate(un, pw);
      
      if(status){  
        out.println("Welcome " + un + "!");  
        session.setAttribute("session","TRUE");
        session.setAttribute("UserName",un);
        
        RequestDispatcher dispatcher = getServletContext().
                getRequestDispatcher("/calendar.jsp");
        dispatcher.forward(request, response);
        
        }  
        else  
        {  
        session.setAttribute("error_msg", "Sorry, email or password error"); 

        RequestDispatcher dispatcher = getServletContext().
                getRequestDispatcher("/login.jsp");
        dispatcher.forward(request, response);
        }  
  }
  
  public void destroy()
  {
      // do nothing.
  }
}
