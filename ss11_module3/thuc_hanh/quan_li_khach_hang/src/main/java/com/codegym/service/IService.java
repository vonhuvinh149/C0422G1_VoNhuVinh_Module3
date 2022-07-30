package com.codegym.service;

import com.codegym.model.Customer;

import java.util.List;

public interface IService {
    List<Customer> findAll();

    void save();

    Customer findById(int id);

    void remove(int id);

    void update(int id, Customer customer);

}
