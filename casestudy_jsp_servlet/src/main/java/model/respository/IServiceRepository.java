package model.respository;

import model.bean.Service;

import java.sql.SQLException;
import java.util.List;

public interface IServiceRepository {
    Service showService(int id);
    List<Service> showAllService ();
    void insertService (Service service) throws SQLException;
}
