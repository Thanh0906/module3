package model.respository.impl;

import model.bean.Service;
import model.respository.DBConnection;
import model.respository.IServiceRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepositoryImpl implements IServiceRepository {
    private static final String SHOW_SERVICE_BY_ID ="SELECT * FROM service WHERE service_id = ?";
    private static final String SHOW_ALL_SERVICE ="SELECT * FROM service";
    private static final String INSERT_SERVICE ="INSERT INTO service (service_name,service_area,service_cost,service_max_people,rent_type_id, service_type_id,standard_room,\n" +
            "description_other_convenience,pool_area,number_of_floors)\n" +
            "values(?,?,?,?,?,?,?,?,?,?);";

    @Override
    public Service showService(int id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet rs= null;
        Service service= null;
        if (connection!=null){
            try {
                preparedStatement =connection.prepareStatement(SHOW_SERVICE_BY_ID);
                preparedStatement.setInt(1,id);
                rs =preparedStatement.executeQuery();
                while (rs.next()){
                    String name= rs.getString("service_name");
                    int area = rs.getInt("service_area");
                    double cost=rs.getDouble("service_cost");
                    int maxPeople=rs.getInt("service_max_peple");
                    int rentTypeId =rs.getInt("rent_type_id");;
                    int serviceTypeId= rs.getInt("service_type_id");
                    String standardRoom=rs.getString("standard_room");
                    String descriptionOtherConvenience=rs.getString("description_other_convenience");
                    double poolArea=rs.getDouble("pool_area");
                    int numberOfFloors=rs.getInt("number_of_floors");
                    service=new Service(id,name,area,cost,maxPeople,rentTypeId,serviceTypeId,standardRoom,
                            descriptionOtherConvenience,poolArea,numberOfFloors);

                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }finally {
                try {
                    rs.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }

        }
        return service;
    }


    @Override
    public List<Service> showAllService() {
        Connection connection =DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Service> serviceList = new ArrayList<>();
        if (connection!=null){
            try {
                preparedStatement =connection.prepareStatement(SHOW_ALL_SERVICE);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    String name= resultSet.getString("service_name");
                    int area = resultSet.getInt("service_area");
                    double cost=resultSet.getDouble("service_cost");
                    int maxPeople=resultSet.getInt("service_max_people");
                    int rentTypeId =resultSet.getInt("rent_type_id");
                    int serviceTypeId= resultSet.getInt("service_type_id");
                    String standardRoom=resultSet.getString("standard_room");
                    String descriptionOtherConvenience=resultSet.getString("description_other_convenience");
                    double poolArea=resultSet.getDouble("pool_area");
                    int numberOfFloors=resultSet.getInt("number_of_floors");
                    Service service =new Service(rentTypeId,name,area,cost,maxPeople,rentTypeId,serviceTypeId,standardRoom,
                            descriptionOtherConvenience,poolArea,numberOfFloors);
                    serviceList.add(service);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                DBConnection.close();
            }
        }

        return serviceList;
    }

    @Override
    public void insertService(Service service) throws SQLException {
        Connection connection =DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection!=null){
            try {
                preparedStatement =connection.prepareStatement(INSERT_SERVICE);
                preparedStatement.setString(1,service.getName());
                preparedStatement.setInt(2,service.getArea());
                preparedStatement.setDouble(3,service.getCost());
                preparedStatement.setInt(4,service.getMaxPeople());
                preparedStatement.setInt(5,service.getRentTypeId());
                preparedStatement.setInt(6,service.getServiceTypeId());
                preparedStatement.setString(7,service.getStandardRoom());
                preparedStatement.setString(8,service.getDescriptionOtherConvenience());
                preparedStatement.setDouble(9,service.getPoolArea());
                preparedStatement.setInt(10,service.getNumberOfFloors());
                preparedStatement.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }finally {
                try {
                    preparedStatement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                DBConnection.close();
            }

        }

    }
}
