package service;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerList {
    public static List<Customer> customers () {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Huỳnh Ngọc Thanh", "1995/06/09", "Quảng Ngãi", "anh-3.jpg"));
        customerList.add(new Customer("Võ Thái Hòa", "1995/06/09", "Quảng Ngãi", "anh-4.jpg"));
        customerList.add(new Customer("Võ Xuân Huy", "1995/06/09", "Quảng Ngãi", "anh-2.jpg"));
        customerList.add(new Customer("Dương Văn Đông", "1995/06/09", "Quảng Ngãi", "anh-1.jpg"));
        customerList.add(new Customer("Đào Văn Anh ", "1995/06/09", "Quảng Ngãi", "anh-5.jpg"));
        return customerList;
    }
}
