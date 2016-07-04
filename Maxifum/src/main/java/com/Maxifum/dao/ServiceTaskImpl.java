package com.Maxifum.dao;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.ServiceTask;

@Repository
public class ServiceTaskImpl implements ServiceTaskDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public ServiceTask findServiceById(int serviceId) {
		Session session = sessionFactory.getCurrentSession();
		ServiceTask service = (ServiceTask) session.load(ServiceTask.class, new Integer(serviceId));
		return service;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ServiceTask> findAllUsersServices(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(ServiceTask.class);
		query.add(Restrictions.eq("serviceOwner", user));
		query.addOrder(Order.desc("dueDate"));
		return query.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ServiceTask> getAllUsersPendingServices(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(ServiceTask.class);
		query.add(Restrictions.eq("serviceOwner", user));
		query.add(Restrictions.eq("open", true));
		query.addOrder(Order.desc("dueDate"));
		return query.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ServiceTask> getAllUsersCompleteServices(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(ServiceTask.class);
		query.add(Restrictions.eq("serviceOwner", user));
		query.add(Restrictions.eq("open", false));
		query.addOrder(Order.desc("dueDate"));
		return query.list();
	}

	@Override

	@SuppressWarnings("unchecked")
	public List<ServiceTask> getUsersNewEvaluations(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(ServiceTask.class);
		query.add(Restrictions.eq("serviceOwner", user));
		query.add(Restrictions.eq("open", false));
		query.add(Restrictions.eq("newTask", true));
		query.addOrder(Order.desc("dueDate"));
		return query.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<ServiceTask> getUsersTodayPendingServices(MaxUser user) {
		Session session = sessionFactory.getCurrentSession();
		Criteria query = session.createCriteria(ServiceTask.class);
		query.add(Restrictions.eq("serviceOwner", user));
		query.add(Restrictions.eq("open", false));
		query.add(Restrictions.eq("dueDate", new Date()));
		query.addOrder(Order.desc("dueDate"));
		return query.list();
	}

	@Override
	public List<ServiceTask> getAllClientsServices() {
		Session session = sessionFactory.getCurrentSession();
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateService(ServiceTask service) {
		Session session = sessionFactory.getCurrentSession();
		session.update(service);
	}

	@Override
	public void saveNewService(ServiceTask service) {
		Session session = sessionFactory.getCurrentSession();
		session.save(service);

	}

	@Override
	public void deleteService(ServiceTask service) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(service);

	}

}
