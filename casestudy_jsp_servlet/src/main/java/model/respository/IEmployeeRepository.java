package model.respository;

import model.bean.Customer;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeRepository {
    Customer showEmployee(int id);
    List<Customer> showListEmployee();
    void insertEmployee (Customer customer) throws SQLException;
    boolean editEmployee(Customer customer) throws SQLException;
    boolean deleteEmployee (int id) throws SQLException;
    List<Customer> searchEmployee(String search);
}
