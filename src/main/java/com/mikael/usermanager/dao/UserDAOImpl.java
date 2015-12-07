package com.mikael.usermanager.dao;

import java.util.List;

import com.mikael.usermanager.domain.User;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> listUser() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	@SuppressWarnings("unchecked")
	public List<User> getUserById(Integer id) {
		return sessionFactory.getCurrentSession().createQuery("from User where id=:id").setParameter("id", id).list();
	}

	public void update(User user) {
		sessionFactory.getCurrentSession().update(user);
	}

	public void removeUser(Integer id) {
		User user = (User) sessionFactory.getCurrentSession().load(User.class, id);
		if (null != user) {
			sessionFactory.getCurrentSession().delete(user);
		}
	}
}
