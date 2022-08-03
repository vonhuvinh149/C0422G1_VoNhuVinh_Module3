package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IRepository {

    List<User> selectAllUsers();

    boolean deleteUser(int id) throws SQLException;

    boolean updateUser(User user) throws SQLException;

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    List<User> findCountry(String country) throws SQLException;

    List<User> sortByNameUser() throws SQLException;

}
