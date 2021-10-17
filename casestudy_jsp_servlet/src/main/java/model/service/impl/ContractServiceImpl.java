package model.service.impl;

import model.bean.Contract;
import model.respository.impl.ContractRepositoryImpl;
import model.service.IContractService;

import java.sql.SQLException;
import java.util.List;

public class ContractServiceImpl implements IContractService {
    ContractRepositoryImpl contractRepository = new ContractRepositoryImpl();



    @Override
    public Contract showContract(int id) {
        return contractRepository.showContract(id);
    }

    @Override
    public List<Contract> showALlContract() {
        return null;
    }

    @Override
    public void insertContract(Contract contract) throws SQLException {
contractRepository.insertContract(contract);
    }
}
