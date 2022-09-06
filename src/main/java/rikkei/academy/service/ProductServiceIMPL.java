package rikkei.academy.service;

import rikkei.academy.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceIMPL implements IProductService {

    private static final Map<Integer, Product> products;
    private static int lastId = 1;

    static {
        products = new HashMap<>();
        products.put(lastId, new Product(lastId++, "Hao hao", 5, "Chua cay", "Acecook"));
        products.put(lastId, new Product(lastId++, "Kokomi", 3, "Chua cay", "Kokomi"));
        products.put(lastId, new Product(lastId++, "Kokomi", 6, "Chua cay", "Viet Hung"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
        lastId++;
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public int getLastId() {
        return lastId;
    }
}
