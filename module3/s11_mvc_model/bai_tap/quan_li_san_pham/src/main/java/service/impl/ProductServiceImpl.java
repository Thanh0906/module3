package service.impl;

import model.Product;
import service.ProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;
    static{
        products = new HashMap<>();
        products.put(1,new Product(1,"Iphone X",600,"New","Apple"));
        products.put(2,new Product(2,"Samsung Galaxy Note X",1100,"New","SamSung"));
        products.put(3,new Product(3,"Iphone 13 Promax",1300,"New","Apple"));
        products.put(4,new Product(4,"SamSum A12",600,"New","SamSum"));
        products.put(5,new Product(5,"Iphone 12 Pro Max",1000,"Version 5","Apple"));
        products.put(6,new Product(6,"Iphone 12 Pro ",800,"New","Apple"));

    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
