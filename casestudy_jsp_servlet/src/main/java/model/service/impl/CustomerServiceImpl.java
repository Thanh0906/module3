package model.service.impl;

import model.bean.Customer;
import model.respository.impl.CustomerRepositoryImpl;
import model.service.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerServiceImpl implements ICustomerService {
    CustomerRepositoryImpl customerRepository = new CustomerRepositoryImpl();
    @Override
    public Customer showCustomer(int id) {
        return customerRepository.showCustomer(id);
    }

    @Override
    public List<Customer> showListCustomer() {
        return customerRepository.showListCustomer();
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        customerRepository.insertCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) throws SQLException {
        return customerRepository.editCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> searchCustomer(String search) {
        return customerRepository.searchCustomer(search);
    }


}
