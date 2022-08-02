package service.impl;

import model.User;
import repositoryservice.IRepository;
import repositoryservice.RepositoryService;
import service.IService;

import java.util.List;

public class UserService implements IService {
    private IRepository repository = new RepositoryService();
    @Override
    public List<User> findAll() {
      return   repository.findAll();
    }

    @Override
    public void deleteUser(int id) {
        repository.deleteUser(id);
    }
}
