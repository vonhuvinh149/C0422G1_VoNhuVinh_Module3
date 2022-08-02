package service;

import model.User;

import java.util.List;

public interface IService {
    List<User> findAll();
    void deleteUser(int id);
}
