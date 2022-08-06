package repository;

import model.customer.Customer;

import java.util.List;

public interface IRepository {
    List<Customer> findAll();
    void addCustomer(Customer customer);
    void deleteCustomer(int id);
    void updateCustomer(Customer customer);
    List<Customer> findByName(String name);
}
