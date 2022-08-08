package repository.customer_repository;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;

public interface IRepositoryCustomer {
    List<Customer> findAll();

    void addCustomer(Customer customer);

    void deleteCustomer(int id);

    void updateCustomer(Customer customer);

    Customer findById(int id);

    List<CustomerType> showCustomerType();

    List<Customer> searchByName(String name);
}
