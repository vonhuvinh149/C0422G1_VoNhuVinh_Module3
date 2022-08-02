package controller;

import model.User;
import service.IService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // b1 get data from dao
        User user = new User();
        IService service = new UserService();
        List<User> userList = service.findAll();
        // b2 set data to jsp
        request.setAttribute("userlist", userList);
        request.getRequestDispatcher("user/show.jsp").forward(request, response);
        service.deleteUser(user.getId());
        String action = request.getParameter("action");
//        if (action == null) {
//            action = "";
//        }
//        switch (action) {
//            case "add":
//                showAddUser(request,response);
//                break;
//            case "update":
//                showUpdateUser(request,response);
//                break;
//            case "delete":
//                deleteUsers(request,response);
//                break;
//            case "sort":
//                sortUser(request,response);
//                break;
//            default:
//                showListUser(request, response);
//        }
//    }

//    private void showUpdateUser(HttpServletRequest request, HttpServletResponse response) {
//    }
//
//    private void showAddUser(HttpServletRequest request, HttpServletResponse response) {
//    }
//
//    private void showUer(HttpServletRequest request, HttpServletResponse response) {
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
    }

}
