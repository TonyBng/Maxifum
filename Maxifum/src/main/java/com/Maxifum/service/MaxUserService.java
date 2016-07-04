package com.Maxifum.service;

import java.util.Date;
import java.util.List;

import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.ServiceTask;

public interface MaxUserService {

	// Finders
	MaxUser findUserById(int id);

	List<MaxUser> getAllUsersUsers();

	// updaters
	void updateUser(MaxUser user);

	// Save
	void saveNewUser(MaxUser user);

	// Deleters
	void deleteUser(MaxUser user);
}
