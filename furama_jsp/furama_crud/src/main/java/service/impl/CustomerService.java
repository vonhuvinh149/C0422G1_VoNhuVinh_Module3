package service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.IRepository;
import repository.impl.CustomerRepository;
import service.IService;

import java.util.List;

public class CustomerService implements IService {
    private IRepository repository = new CustomerRepository();

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
    public Customer  findById(int id) {
        return null;
    }

    @Override
    public List<CustomerType> showCustomerType() {
        return repository.showCustomerType();
    }
}
