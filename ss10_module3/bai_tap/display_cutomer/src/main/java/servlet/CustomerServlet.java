package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerservlet", value = "/customerservlet")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Vinh", LocalDate.parse("2000-07-07"), "Quảng Nam", "https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anh-Doremon-Cute-dang-yeu-Nhat-The-Gioi.jpg"));
        customerList.add(new Customer("Nhân", LocalDate.parse("2000-07-07"), "Quảng Nam", "https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anh-Doremon-Cute-dang-yeu-Nhat-The-Gioi.jpg"));
        customerList.add(new Customer("Phú", LocalDate.parse("2000-07-07"), "Quảng Nam", "https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anh-Doremon-Cute-dang-yeu-Nhat-The-Gioi.jpg"));
        customerList.add(new Customer("Huy", LocalDate.parse("2000-07-07"), "Quảng Nam", "https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anh-Doremon-Cute-dang-yeu-Nhat-The-Gioi.jpg"));
        customerList.add(new Customer("Thái", LocalDate.parse("2000-07-07"), "Quảng Nam", "https://symbols.vn/wp-content/uploads/2022/01/Hinh-Anh-Doremon-Cute-dang-yeu-Nhat-The-Gioi.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/customer/list.jsp");
        request.setAttribute("customerList", customerList);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
