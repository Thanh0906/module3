package model.service;

import model.bean.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    List<Customer> showCustomer (String search);
    Customer showCustomerById (int id);
    void insertCustomer (Customer customer) throws SQLException;
    boolean deleteCustomer (int id) throws SQLException;
    boolean updateCustomer (Customer customer) throws SQLException;

}
