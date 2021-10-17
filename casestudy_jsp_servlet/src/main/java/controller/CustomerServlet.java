package controller;

import model.bean.Customer;
import model.bean.User;
import model.service.impl.CustomerServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    CustomerServiceImpl customerService = new CustomerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    createNewCustomer(request, response);
                    break;
                case "edit":
                    editCustomer(request, response);
                    break;
                case "search":
                    searchCustomer(request, response);
                    break;

            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    private void createNewCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("id_card");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int customerTypeId = Integer.parseInt(request.getParameter("customer_type_id"));
        Customer customer = new Customer(name, birthday, gender, idCard, phone, email, address, customerTypeId);
        customerService.insertCustomer(customer);
        request.setAttribute("message", "Thêm mới thành công");
        request.getRequestDispatcher("/customer/create.jsp").forward(request, response);
    }
    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("id_card");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int customerTypeId = Integer.parseInt(request.getParameter("customer_type_id"));
        Customer customer = new Customer(id, name, birthday, gender, idCard, phone, email, address, customerTypeId);
        customerService.editCustomer(customer);
        request.setAttribute("message", "Thêm mới Thành công");
        request.getRequestDispatcher("/customer/edit.jsp").forward(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    showCreateForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteCustomer(request, response);
                    break;
                case "search":
                    searchCustomer(request,response);
                    break;
                default:
                    listCustomer(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Customer> customerList = customerService.showListCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("customer/list.jsp").forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        request.setAttribute("customerList", customerService.showListCustomer());
        request.getRequestDispatcher("customer/create.jsp").forward(request, response);
    }



    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.deleteCustomer(id);
        List<Customer> customerList = customerService.showListCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/customer/list.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = customerService.showCustomer(id);
        request.setAttribute("customer", customer);
        request.getRequestDispatcher("/customer/edit.jsp").forward(request, response);
    }



    private void showSearchForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        String search = request.getParameter("search");
        request.setAttribute("search", search);
        request.getRequestDispatcher("/customer/search.jsp").forward(request, response);
    }

    private void searchCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Customer> customerList = new ArrayList<>();
        RequestDispatcher dispatcher;
        String search = request.getParameter("name");
        customerList = customerService.searchCustomer(search);
        if (customerList == null) {
            dispatcher = request.getRequestDispatcher("/error-404.jsp");
        } else {
            request.setAttribute("search", search);
            request.setAttribute("customerList", customerList);
            dispatcher = request.getRequestDispatcher("/customer/search-result.jsp");
            dispatcher.forward(request, response);
        }
    }
}


