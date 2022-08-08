package service.customer_service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.customer_repository.IRepositoryCustomer;
import repository.customer_repository.impl.CustomerRepository;
import service.customer_service.IService;

import java.util.List;

public class CustomerService implements IService {
    private IRepositoryCustomer repository = new CustomerRepository();

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
        repository.deleteCustomer(id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        repository.updateCustomer(customer);
    }

    @Override
    public Customer findById(int id) {
        return repository.findById(id);
    }

    @Override
    public List<CustomerType> showCustomerType() {
        return repository.showCustomerType();
    }

    @Override
    public List<Customer> searchByName(String name) {
        return repository.searchByName(name);
    }
}
