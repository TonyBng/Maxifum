package com.Maxifum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Maxifum.dao.ServiceTaskDAO;
import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.ServiceTask;

import lombok.Setter;

@Service
public class ServiceTaskServiceImpl implements ServiceTaskService {

	@Autowired
	private ServiceTaskDAO serviceDAO;

	@Override
	@Transactional
	public ServiceTask findServiceById(int serviceId) {
		return serviceDAO.findServiceById(serviceId);
	}

	@Override
	@Transactional
	public List<ServiceTask> findAllUsersServices(MaxUser user) {
		return serviceDAO.findAllUsersServices(user);
	}

	@Override
	@Transactional
	public List<ServiceTask> getUsersTodayPendingServices(MaxUser user) {
		return serviceDAO.getUsersTodayPendingServices(user);
	}

	@Override
	@Transactional
	public List<ServiceTask> getAllUsersPendingServices(MaxUser user) {
		return serviceDAO.getAllUsersPendingServices(user);
	}

	@Override
	@Transactional
	public List<ServiceTask> getUsersNewEvaluations(MaxUser user) {
		return serviceDAO.getUsersNewEvaluations(user);
	}

	@Override
	@Transactional
	public List<ServiceTask> getAllUsersCompleteServices(MaxUser user) {
		return serviceDAO.getAllUsersCompleteServices(user);
	}

	@Override
	@Transactional
	public List<ServiceTask> getAllClientsServices() {
		return serviceDAO.getAllClientsServices();
	}

	@Override
	@Transactional
	public void updateService(ServiceTask service) {
		serviceDAO.updateService(service);
	}

	@Override
	@Transactional
	public void saveNewService(ServiceTask service) {
		serviceDAO.saveNewService(service);
	}

	@Override
	@Transactional
	public void deleteService(ServiceTask servce) {
		serviceDAO.deleteService(servce);
	}

}
