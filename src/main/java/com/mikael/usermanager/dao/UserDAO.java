package com.mikael.usermanager.dao;

import java.util.List;
import com.mikael.usermanager.domain.User;

public interface UserDAO {
	public void addUser(User user);
	public List<User> listUser();
	public List<User> getUserById(Integer id);
	public void update(User user);
	public void removeUser(Integer id);
}