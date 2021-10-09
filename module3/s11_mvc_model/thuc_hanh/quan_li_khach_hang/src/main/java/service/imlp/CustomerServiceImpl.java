package service.imlp;

import model.Customer;
import service.CustomerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer> customers;

    static {
        customers = new HashMap<>();
        customers.put(1, new Customer(1, "Thanh", "thanh@gmail.com", "Quảng Ngãi"));
        customers.put(2, new Customer(2, "Tân", "tan@gmail.com", "Đà nẵng"));
        customers.put(3, new Customer(3, "Sang", "sang@gmail.com", "Quảng Nam"));
        customers.put(4, new Customer(4, "Phước", "phuoc@gmail.com", "Huế"));
        customers.put(5, new Customer(5, "Thiện", "thien@gmail.com", "Đà Nẵng"));
        customers.put(6, new Customer(6, "Huy", "huy@gmail.com", "Quảng Nam"));
    }
    @Override
    public List<Customer> findAll() {
            return new ArrayList<>(customers.values());
    }

    @Override
    public void save(Customer customer) {
        customers.put(customer.getId(), customer);

    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        customers.put(id, customer);
    }

    @Override
    public void remove(int id) {
         customers.remove(id);
    }
}
