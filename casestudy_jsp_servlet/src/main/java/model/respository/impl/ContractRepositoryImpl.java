package model.respository.impl;

import model.bean.Contract;
import model.respository.DBConnection;
import model.respository.IContractRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;


public class ContractRepositoryImpl implements IContractRepository {
    private static final String SHOW_ALL_CONTRACT = "SELECT * FROM contract";
    private static final String SHOW_CONTRACT_BY_ID = "SELECT * FROM contract WHERE contract_id = ?";
    private static final String INSERT_CONTRACT = "INSERT INTO contract (contract_start_date, contract_end_date, " +
            "contract_deposit, contract_total_money, employee_id, customer_id, service_id) VALUES (?, ?, ?, ?, ?, ?, ?);";

    public ContractRepositoryImpl () {}


    @Override
    public Contract showContract(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Contract contract = null;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SHOW_CONTRACT_BY_ID);
                preparedStatement.setInt(1, id);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String startDate = resultSet.getString("contract_start_date");
                    String endDate = resultSet.getString("contract_end_date");
                    double deposit = resultSet.getDouble("contract_deposit");
                    double totalMoney = resultSet.getDouble("contract_total_money");
                    int employeeId = resultSet.getInt("employee_id");
                    int customerId = resultSet.getInt("customer_id");
                    int serviceId = resultSet.getInt("service_id");
                    contract = new Contract(id, startDate, endDate, deposit, totalMoney, employeeId, customerId, serviceId);
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
        return contract;
    }

    @Override
    public List<Contract> showAllContract() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Contract> contractList = new ArrayList<>();

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SHOW_ALL_CONTRACT);
                resultSet = preparedStatement.executeQuery();
                Contract contract = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("contract_id");
                    String startDate = resultSet.getString("contract_start_date");
                    String endDate = resultSet.getString("contract_end_date");
                    double deposit = resultSet.getDouble("contract_deposit");
                    double totalMoney = resultSet.getDouble("contract_total_money");
                    int employeeId = resultSet.getInt("employee_id");
                    int customerId = resultSet.getInt("customer_id");
                    int serviceId = resultSet.getInt("service_id");
                    contract = new Contract(id, startDate, endDate, deposit, totalMoney, employeeId, customerId, serviceId);
                    contractList.add(contract);
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
        return contractList;
    }

    @Override
    public void insertContract(Contract contract) throws SQLException {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_CONTRACT);
                preparedStatement.setString(1, contract.getStartDate());
                preparedStatement.setString(2, contract.getEndDate());
                preparedStatement.setDouble(3, contract.getDeposit());
                preparedStatement.setDouble(4, contract.getTotalMoney());
                preparedStatement.setInt(5, contract.getEmployeeId());
                preparedStatement.setInt(6, contract.getCustomerId());
                preparedStatement.setInt(7, contract.getServiceId());
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
