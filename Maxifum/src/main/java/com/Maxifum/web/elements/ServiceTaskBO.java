package com.Maxifum.web.elements;

import java.util.List;

public interface ServiceTaskBO {

	// Finders
	ServiceTask findServiceById();

	List<ServiceTask> findAllUsersServices();

	List<ServiceTask> getAllUsersPendingServices();

	List<ServiceTask> getAllUsersCompleteServices();

	List<ServiceTask> getAllClientsServices();

	// updaters
	void updateService(ServiceTask service);

	// Save
	void saveNewService(ServiceTask service);

	// Deleters
	void deleteService(ServiceTask servce);

}
