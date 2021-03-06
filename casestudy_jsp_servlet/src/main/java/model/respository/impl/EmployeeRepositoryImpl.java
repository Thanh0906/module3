package model.respository.impl;

import model.bean.Employee;
import model.respository.DBConnection;
import model.respository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements IEmployeeRepository {
    private static final String SHOW_ALL_EMPLOYEES = "SELECT * FROM employee";
    private static final String SHOW_EMPLOYEE_BY_ID = "SELECT * FROM employee WHERE employee_id = ?";
    private static final String INSERT_EMPLOYEE = "INSERT INTO employee (employee_name, employee_birthday, " +
            "employee_id_card, employee_salary, employee_phone, employee_email, employee_address, position_id, " +
            "education_degree_id, division_id, username) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String UPDATE_EMPLOYEE = "UPDATE employee SET employee_name = ?, employee_birthday = ?, " +
            "employee_id_card = ?, employee_salary = ?, employee_phone = ?, employee_email = ?, employee_address = ?, " +
            "position_id = ?, education_degree_id = ?, division_id = ?, username = ? WHERE employee_id = ?;";
    private static final String DELETE_EMPLOYEE = "DELETE FROM employee WHERE employee_id = ?; ";
    private static final String SELECT_EMPLOYEE_BY_NAME = "SELECT * FROM employee WHERE substring_index(employee_name,' ', -1) LIKE ?;";


    public EmployeeRepositoryImpl() {
    }

    @Override
    public Employee showEmployeeId(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Employee employee = null;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SHOW_EMPLOYEE_BY_ID);
                preparedStatement.setInt(1, id);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String name = resultSet.getString("employee_name");
                    String birthday = resultSet.getString("employee_birthday");
                    String idCard = resultSet.getString("employee_id_card");
                    double salary = resultSet.getDouble("employee_salary");
                    String phone = resultSet.getString("employee_phone");
                    String email = resultSet.getString("employee_email");
                    String address = resultSet.getString("employee_address");
                    int positionId = resultSet.getInt("position_id");
                    int educationDegreeId = resultSet.getInt("education_degree_id");
                    int divisionId = resultSet.getInt("division_id");
                    String username = resultSet.getString("username");
                    employee = new Employee(id, name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId, username);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return employee;
    }

    @Override
    public List<Employee> showAllEmployee() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Employee> employeeList = new ArrayList<>();

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SHOW_ALL_EMPLOYEES);
                resultSet = preparedStatement.executeQuery();
                Employee employee = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("employee_id");
                    String name = resultSet.getString("employee_name");
                    String birthday = resultSet.getString("employee_birthday");
                    String idCard = resultSet.getString("employee_id_card");
                    double salary = resultSet.getDouble("employee_salary");
                    String phone = resultSet.getString("employee_phone");
                    String email = resultSet.getString("employee_email");
                    String address = resultSet.getString("employee_address");
                    int positionId = resultSet.getInt("position_id");
                    int educationDegreeId = resultSet.getInt("education_degree_id");
                    int divisionId = resultSet.getInt("division_id");
                    String username = resultSet.getString("username");
                    employee = new Employee(id, name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId, username);
                    employeeList.add(employee);
                }
            } catch (SQLException  e) {
                e.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return employeeList;
    }

    @Override
    public void insertEmployee(Employee employee) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE);
                preparedStatement.setString(1, employee.getName());
                preparedStatement.setString(2,employee.getBirthday());
                preparedStatement.setString(3, employee.getIdCard());
                preparedStatement.setDouble(4, employee.getSalary());
                preparedStatement.setString(5, employee.getPhone());
                preparedStatement.setString(6, employee.getEmail());
                preparedStatement.setString(7, employee.getAddress());
                preparedStatement.setInt(8, employee.getPositionId());
                preparedStatement.setInt(9, employee.getEducationDegreeId());
                preparedStatement.setInt(10, employee.getDivisionId());
                preparedStatement.setString(11, employee.getUsername());
                preparedStatement.executeUpdate();
            } catch (SQLException e) {
                printSQLException(e);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public boolean updateEmployee(Employee employee) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        boolean rowUpdated;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(UPDATE_EMPLOYEE);
                preparedStatement.setString(1, employee.getName());
                preparedStatement.setString(2,employee.getBirthday());
                preparedStatement.setString(3, employee.getIdCard());
                preparedStatement.setDouble(4, employee.getSalary());
                preparedStatement.setString(5, employee.getPhone());
                preparedStatement.setString(6, employee.getEmail());
                preparedStatement.setString(7, employee.getAddress());
                preparedStatement.setInt(8, employee.getPositionId());
                preparedStatement.setInt(9, employee.getEducationDegreeId());
                preparedStatement.setInt(10, employee.getDivisionId());
                preparedStatement.setString(11, employee.getUsername());
                preparedStatement.setInt(12, employee.getId());
                rowUpdated = preparedStatement.executeUpdate() > 0;
                return rowUpdated;
            } catch (SQLException  e) {
                e.printStackTrace();
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return false;
    }

    @Override
    public void deleteEmployee(int id) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        int resultSet = Integer.parseInt(null);

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(DELETE_EMPLOYEE);
                preparedStatement.setInt(1, id);
                resultSet = preparedStatement.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }

    }

    @Override
    public List<Employee> searchEmployee(String search) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Employee> employeeList = new ArrayList<>();

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_EMPLOYEE_BY_NAME);
                String searchSQL = search.concat("%");
                preparedStatement.setString(1, searchSQL);
                resultSet = preparedStatement.executeQuery();
                Employee employee = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("employee_id");
                    String name = resultSet.getString("employee_name");
                    String birthday = resultSet.getString("employee_birthday");
                    String idCard = resultSet.getString("employee_id_card");
                    double salary = resultSet.getDouble("employee_salary");
                    String phone = resultSet.getString("employee_phone");
                    String email = resultSet.getString("employee_email");
                    String address = resultSet.getString("employee_address");
                    int positionId = resultSet.getInt("position_id");
                    int educationDegreeId = resultSet.getInt("education_degree_id");
                    int divisionId = resultSet.getInt("division_id");
                    String username = resultSet.getString("username");
                    employee = new Employee(id, name, birthday, idCard, salary, phone, email, address, positionId, educationDegreeId, divisionId, username);
                    employeeList.add(employee);
                }
            } catch (SQLException  e) {
                e.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return employeeList;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
