package com.mikael.usermanager.service;
 
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.mikael.usermanager.dao.UserDAO;
import com.mikael.usermanager.domain.User;
 
@Service
public class UserServiceImpl implements UserService {
 
    @Autowired
    private UserDAO userDAO;
 
    @Transactional
    public void addUser(User user) {
        userDAO.addUser(user);
    }
 
    @Transactional
    public List<User> listUser() {
        return userDAO.listUser();
    }

    @Transactional
    public List<User> getUserById(Integer id) {
        return userDAO.getUserById(id);
    }

    @Transactional
    public void update(User user) {
        userDAO.update(user);
    }
 
    @Transactional
    public void removeUser(Integer id) {
        userDAO.removeUser(id);
    }
}
