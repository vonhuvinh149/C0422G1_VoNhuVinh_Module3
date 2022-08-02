package repositoryservice;

import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class RepositoryService implements IRepository {
    private final String SELECT_ALL = "SELECT * FROM users";
    private final String INSERT_INTO = "insert into student(`name` , email, country " + "values(?,?,?)";
    private final String DELETE_ID = "delete from users" + "where id = ?";

    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        // kết nối với database -----
        Connection connection = BaseRepository.getConnectDB();
        try {
            // tao câu truy vấn----
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(id, name, email, country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public boolean add(User user) {
        return false;
    }

    @Override
    public boolean update(int id, User user) {
        return false;
    }

    @Override
    public boolean deleteUser(int id) {
        return false;
    }


    @Override
    public User findById(int id) {
        return null;
    }

    @Override
    public List<User> searchByCountry(String country) {
        return null;
    }

    @Override
    public List<User> sortByName() {
        return null;
    }
}
