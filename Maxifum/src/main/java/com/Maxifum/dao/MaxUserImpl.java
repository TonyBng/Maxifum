package com.Maxifum.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Maxifum.web.elements.MaxUser;

@Repository
public class MaxUserImpl implements MaxUserDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public MaxUser findUserById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.load(MaxUser.class, id);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<MaxUser> getAllUsersUsers() {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(MaxUser.class);
		return query.list();
	}

	@Override
	public void updateUser(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		session.update(user);
	}

	@Override
	public void saveNewUser(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		session.save(user);

	}

	@Override
	public void deleteUser(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(user);
	}

	@Override
	public MaxUser findByLogin(String userName, String password) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(MaxUser.class);
		query.add(Restrictions.eq("userLogin", userName));
		query.add(Restrictions.eq("userPassword", password));
		return (MaxUser) query.uniqueResult();
	}

}
