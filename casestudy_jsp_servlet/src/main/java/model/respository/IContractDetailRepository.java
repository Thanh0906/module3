package model.respository;

import model.bean.ContractDetail;

import java.sql.SQLException;
import java.util.List;

public interface IContractDetailRepository {
    ContractDetail showContractDetail (int id);
    List<ContractDetail> showAllContractDetail ();
    void insertContractDetail (ContractDetail contractDetail) throws SQLException;
}
