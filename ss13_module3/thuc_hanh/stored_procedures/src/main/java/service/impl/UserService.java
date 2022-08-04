package service.impl;

import Repository.IUserRepository;
import Repository.impl.UserRepositoryService;
import model.User;
import service.IUser;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUser {
    private IUserRepository userRepository = new UserRepositoryService();

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

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) {
        userRepository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permissions) {
        userRepository.addUserTransaction(user, permissions);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        userRepository.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        userRepository.insertUpdateUseTransaction();
    }
}
