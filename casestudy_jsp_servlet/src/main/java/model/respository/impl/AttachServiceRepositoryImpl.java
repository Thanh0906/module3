package model.respository.impl;

import model.bean.AttachService;
import model.respository.DBConnection;
import model.respository.IAttachServiceRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AttachServiceRepositoryImpl implements IAttachServiceRepository {
    private static final String SELECT_ALL_ATTACH_SERVICE = "SELECT * FROM attach_service";
    public AttachServiceRepositoryImpl () {}
    @Override
    public List<AttachService> showAllAttachService() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<AttachService> attachServiceList = new ArrayList<>();

        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_ATTACH_SERVICE);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int id = resultSet.getInt("attach_service_id");
                    String name = resultSet.getString("attach_service_name");
                    double cost = resultSet.getDouble("attach_service_cost");
                    int unit = resultSet.getInt("attach_service_unit");
                    String status = resultSet.getString("attach_service_status");
                    AttachService attachService = new AttachService(id, name, cost, unit, status);
                    attachServiceList.add(attachService);
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
        return attachServiceList;
    }
}
