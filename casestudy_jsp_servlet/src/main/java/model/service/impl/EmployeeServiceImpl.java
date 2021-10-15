package model.service.impl;

import model.bean.Employee;
import model.service.IEmployeeService;

import java.sql.SQLException;
import java.util.List;

public class EmployeeServiceImpl implements IEmployeeService {
    EmployeeServiceImpl employeeService =new EmployeeServiceImpl();
    @Override
    public Employee showEmployee(int id) {
        return employeeService.showEmployee(id);
    }

    @Override
    public List<Employee> showListEmployee() {
        return employeeService.showListEmployee();
    }

    @Override
    public void insertEmployee(Employee employee) throws SQLException {
        employeeService.insertEmployee(employee);

    }

    @Override
    public boolean editEmployee(Employee employee) throws SQLException {
        return employeeService.editEmployee(employee);
    }

    @Override
    public boolean deleteEmployee(int id) throws SQLException {
        return employeeService.deleteEmployee(id);
    }

    @Override
    public List<Employee> searchEmployee(String search) {
        return employeeService.searchEmployee(search);
    }
}
