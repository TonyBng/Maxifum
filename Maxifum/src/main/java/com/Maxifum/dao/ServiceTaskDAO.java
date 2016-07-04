package com.Maxifum.dao;

import java.util.List;

import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.ServiceTask;

public interface ServiceTaskDAO {

	// Finders
	ServiceTask findServiceById(int serviceId);

	List<ServiceTask> findAllUsersServices(MaxUser user);

	List<ServiceTask> getAllUsersPendingServices(MaxUser user);

	List<ServiceTask> getAllUsersCompleteServices(MaxUser user);

	List<ServiceTask> getUsersNewEvaluations(MaxUser user);

	List<ServiceTask> getUsersTodayPendingServices(MaxUser user);

	List<ServiceTask> getAllClientsServices();

	// updaters
	void updateService(ServiceTask service);

	// Save
	void saveNewService(ServiceTask service);

	// Deleters
	void deleteService(ServiceTask servce);
}
