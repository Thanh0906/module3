package model.respository.impl;

import model.bean.Division;
import model.respository.DBConnection;
import model.respository.IDivisionRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DivisionRepositoryImpl implements IDivisionRepository {
    private static final String SHOW_ALL_DIVISION = "SELECT* FROM division;";
    @Override
    public List<Division> showAllDivision() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Division> divisionList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SHOW_ALL_DIVISION);
                resultSet = statement.executeQuery();
                Division division = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("division_id");
                    String name = resultSet.getString("division_name");
                    division  = new Division(id, name);
                    divisionList.add(division);
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
        return divisionList;

    }
}
