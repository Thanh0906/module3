package model.respository.impl;

import model.bean.Division;
import model.bean.Education_degree;
import model.respository.DBConnection;
import model.respository.IEducationDegreeRepository;
import model.respository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EducationDegreeRepositoryImpl implements IEducationDegreeRepository {
    private static String SHOW_ALL_EDUCATION= "SELECT*FROM education_degree;";
    @Override
    public List<Education_degree> showAllEducation() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Education_degree> education_degreeList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SHOW_ALL_EDUCATION);
                resultSet = statement.executeQuery();
               Education_degree education_degree = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("education_degree_id");
                    String name = resultSet.getString("education_degree_name");
                    education_degree  = new Education_degree(id, name);
                    education_degreeList.add(education_degree);
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
        return education_degreeList;
    }
}
