package model.service;


import model.bean.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
    Employee showEmployee(int id);
    List<Employee> showListEmployee();
    void insertEmployee (Employee employee) throws SQLException;
    boolean editEmployee(Employee employee) throws SQLException;
    boolean deleteEmployee (int id) throws SQLException;
    List<Employee> searchEmployee(String search);
}
