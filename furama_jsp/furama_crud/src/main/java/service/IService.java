package service;

import model.customer.Customer;

import java.util.List;

public interface IService {
    List<Customer> findAll();
    void addCustomer(Customer customer);
    void deleteCustomer(int id);
    void updateCustomer(Customer customer);
    List<Customer> findByName(String name);
}
