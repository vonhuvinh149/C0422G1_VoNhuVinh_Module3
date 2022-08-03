package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IService {
    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    List<User> findCountry(String country) throws SQLException;

    public List<User> sortByNameUser() throws SQLException;

    void addUserTransaction(User user, int[] permision);
}
