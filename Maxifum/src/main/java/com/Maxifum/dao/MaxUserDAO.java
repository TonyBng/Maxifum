package com.Maxifum.dao;

import java.util.List;

import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.ServiceTask;

public interface MaxUserDAO {

	// Finders
	MaxUser findUserById(int id);

	List<MaxUser> getAllUsersUsers();

	// updaters
	void updateUser(MaxUser User);

	// Save
	void saveNewUser(MaxUser User);

	// Deleters
	void deleteUser(MaxUser servce);
}
