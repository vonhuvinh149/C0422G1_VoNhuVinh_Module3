package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUser {
    public void insertUser(User user) throws SQLException;

    public User selectUserById(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    public List<User> selectUserByCountry(String country);

    User getUserById(int id);

    void insertUserStore(User user);

    void addUserTransaction(User user, int[] permissions);

    void insertUpdateWithoutTransaction();

    void insertUpdateUseTransaction();
}
