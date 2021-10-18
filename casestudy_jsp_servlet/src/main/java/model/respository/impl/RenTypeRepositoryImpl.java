package model.respository.impl;

import model.bean.RenType;
import model.bean.ServiceType;
import model.respository.DBConnection;
import model.respository.IRenTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RenTypeRepositoryImpl implements IRenTypeRepository {
    private static final String SHOW_ALL_REN_TYPE= "SELECT*FROM service_type;";
    @Override
    public List<RenType> showAllRenType() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<RenType> rentTypeList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SHOW_ALL_REN_TYPE);
                resultSet = statement.executeQuery();
                RenType renType = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("rent_type_id");
                    String name = resultSet.getString("rent_type_name");
                    int cost = resultSet.getInt("rent_type_cost");
                    renType  = new RenType(id, name,cost);
                    rentTypeList.add(renType);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }
        }
        return rentTypeList;
    }


}
