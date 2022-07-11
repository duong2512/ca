package controller;

import model.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/user")
public class CustomerServlet extends HttpServlet {
    List<Customer> customers=new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        RequestDispatcher dispatcher = null;
        if (action==null){
            action="";
        }
        System.out.println("vao get");
        switch (action){
            case "login":
//                login(req,resp,dispatcher);
//                break;
            default:
                dispatcher=req.getRequestDispatcher("login.jsp");
                dispatcher.forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = null;
        String action=req.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "login":
                String userName = req.getParameter("username");
                String passWord=req.getParameter("password");
                for (Customer c:customers
                ) {
                    if (c.getUserName().equals(userName)&&c.getPassWord().equals(passWord)){
                        req.setAttribute("customer",customers);
                        dispatcher=req.getRequestDispatcher("index.jsp");
                        dispatcher.forward(req,resp);
                    }
                }
        }
    }
}
