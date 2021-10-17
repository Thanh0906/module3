package model.service.impl;

import model.bean.Employee;
import model.respository.impl.EmployeeRepositoryImpl;
import model.service.IEmployeeService;

import java.sql.SQLException;
import java.util.List;

public class EmployeeServiceImpl implements IEmployeeService {
    EmployeeRepositoryImpl employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public Employee showEmployeeId(int id) {
        return employeeRepository.showEmployeeId(id);
    }

    @Override
    public List<Employee> showAllEmployee() {
        return employeeRepository.showAllEmployee();
    }

    @Override
    public void insertEmployee(Employee employee) throws SQLException {
        employeeRepository.insertEmployee(employee);
    }

    @Override
    public boolean updateEmployee(Employee employee) throws SQLException {
        return employeeRepository.updateEmployee(employee);
    }

    @Override
    public void deleteEmployee(int id) throws SQLException {
         employeeRepository.deleteEmployee(id);
    }

    @Override
    public List<Employee> searchEmployee(String search) {
        return employeeRepository.searchEmployee(search);
    }


    }

