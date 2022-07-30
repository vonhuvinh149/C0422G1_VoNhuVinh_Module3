package servicerepository.impl.impl;

import model.Product;
import servicerepository.impl.IRepositoryService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RepositoryService implements IRepositoryService {

    private static Map<Integer,Product> mapProduct = new HashMap<>();
    static {
        mapProduct.put(1,new Product(1,"XE MAY", 1000000000, "NGON","VIETNAM"));
        mapProduct.put(2,new Product(2,"XE DAP", 1200000000, "NGON","VIETNAM"));
        mapProduct.put(3,new Product(3,"XE OTO", 130000000, "NGON","VIETNAM"));
        mapProduct.put(4,new Product(4,"XE TAI", 1050000000, "NGON","VIETNAM"));
        mapProduct.put(5,new Product(5,"XE LĂN", 1030300300, "NGON","VIETNAM"));
        mapProduct.put(6,new Product(6,"XE NGỰA", 13030000, "NGON","VIETNAM"));

    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(mapProduct.values()) ;
    }

    @Override
    public void update(int id, Product product) {
        mapProduct.put(id,product);
    }

    @Override
    public void delete(int id) {
        mapProduct.remove(id);
    }

    @Override
    public void add(Product product) {
        mapProduct.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return mapProduct.get(id);
    }

    @Override
    public Product productDetail(int id) {
        return null;
    }
}
