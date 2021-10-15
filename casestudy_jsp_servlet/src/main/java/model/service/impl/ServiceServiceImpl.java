package model.service.impl;

import model.bean.Service;
import model.respository.impl.ServiceRepositoryImpl;
import model.service.IServiceService;

import java.sql.SQLException;
import java.util.List;

public class ServiceServiceImpl implements IServiceService {
    ServiceRepositoryImpl serviceRepository =new ServiceRepositoryImpl();
    @Override
    public Service showService(int id) {
        return serviceRepository.showService(id);
    }

    @Override
    public List<Service> showAllService() {
        return serviceRepository.showAllService();
    }

    @Override
    public void insertService(Service service) throws SQLException {
        serviceRepository.insertService(service);

    }
}
