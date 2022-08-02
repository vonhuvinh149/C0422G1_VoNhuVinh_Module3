package repositoryservice;

import model.User;

import java.util.List;

public interface IRepository {
    List<User> findAll();
    boolean add(User user);
    boolean update(int id, User user);
    boolean deleteUser(int id);
    User findById(int id);
    List<User> searchByCountry(String country);
    List<User>sortByName();
}
