package model.service.impl;

import model.bean.Customer;
import model.respository.impl.CustomerRepositoryImpl;
import model.service.ICustomerService;

import java.sql.SQLException;
import java.util.List;

public class CustomerServiceImpl implements ICustomerService {
    private CustomerRepositoryImpl customerRepository = new CustomerRepositoryImpl();

    @Override
    public List<Customer> showCustomer(String search) {
        return customerRepository.showCustomer(search);
    }

    @Override
    public Customer showCustomerById(int id) {
        return customerRepository.showCustomerById(id);
    }

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        customerRepository.insertCustomer(customer);
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return customerRepository.updateCustomer(customer);
    }
}
