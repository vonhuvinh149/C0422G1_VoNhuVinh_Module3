package service.impl;

import repository.IRepository;
import repository.impl.RepositoryService;
import model.User;
import service.IUser;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUser {
    private IRepository userRepository = new RepositoryService();

    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUserById(int id) {
        return userRepository.selectUserById(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> selectUserByCountry(String country) {
        return userRepository.selectUserByCountry(country);
    }
}
