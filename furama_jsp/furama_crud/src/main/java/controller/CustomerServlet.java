package controller;

import model.customer.Customer;
import model.customer.CustomerType;
import service.IService;
import service.impl.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    IService service = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateCustomer(request, response);
                break;
            case "delete":
                showDelete(request, response);
                break;
            case "update":
                showUpdateCustomer(request,response);
                break;
            default:
                showListCustomer(request, response);
        }
    }

    private void showUpdateCustomer(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showDelete(HttpServletRequest request, HttpServletResponse response) {
        int customerCode = Integer.parseInt(request.getParameter("customerId"));
        service.deleteCustomer(customerCode);
        showListCustomer(request, response);

    }

    private void showCreateCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerType> customerTypeList = service.showCustomerType();
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            request.getRequestDispatcher("furama/customer/add_customer.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<CustomerType> customerTypeList = service.showCustomerType();
        Customer customer = service.findById(id);
        request.setAttribute("customer",customer);
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            request.getRequestDispatcher("furama/customer/update.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addCustomer(request, response);
                break;
                case "update":
                updateCustomer(request, response);
                break;
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        String customerName = request.getParameter("customerName");
        String customerBirth = request.getParameter("customerBirth");
        boolean customerGender = Boolean.parseBoolean(request.getParameter("customerGender"));
        String customerIdCard = request.getParameter("customerIdCard");
        String customerPhone = request.getParameter("customerPhone");
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");
        Customer customer = new Customer(customerId,customerTypeId, customerName, customerBirth, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress);
        service.updateCustomer(customer);
        showListCustomer(request, response);
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));
        String customerName = request.getParameter("customerName");
        String customerBirth = request.getParameter("customerBirth");
        boolean customerGender = Boolean.parseBoolean(request.getParameter("customerGender"));
        String customerIdCard = request.getParameter("customerIdCard");
        String customerPhone = request.getParameter("customerPhone");
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");
        Customer customer = new Customer(customerTypeId, customerName, customerBirth, customerGender, customerIdCard, customerPhone, customerEmail, customerAddress);
        service.addCustomer(customer);
        showListCustomer(request, response);
    }
}
