package model.respository;

import model.bean.Contract;

import java.sql.SQLException;
import java.util.List;

public interface IContractRepository {
    Contract showContract(int id);
    List<Contract> showAllContract();
    void insertContract (Contract contract) throws SQLException;
}
