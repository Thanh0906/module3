package model.service;


import model.bean.Employee;

import java.sql.SQLException;
import java.util.List;

public interface IEmployeeService {
    Employee showEmployeeId(int id);
    List<Employee> showAllEmployee();
    void insertEmployee (Employee employee) throws SQLException;
    boolean updateEmployee (Employee employee) throws SQLException;
   void deleteEmployee (int id) throws SQLException;
    List<Employee> searchEmployee(String search);

}
