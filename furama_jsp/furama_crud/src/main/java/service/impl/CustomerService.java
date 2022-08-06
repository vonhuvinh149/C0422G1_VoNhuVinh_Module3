package service.impl;

import model.customer.Customer;
import repository.IRepository;
import repository.impl.RepositoryService;
import service.IService;

import java.util.List;

public class CustomerService implements IService {
    private IRepository repository = new RepositoryService();

    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public void addCustomer(Customer customer) {
        repository.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {

    }

    @Override
    public void updateCustomer(Customer customer) {

    }

    @Override
    public List<Customer> findByName(String name) {
        return null;
    }
}
