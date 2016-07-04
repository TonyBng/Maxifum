package com.Maxifum.web.elements;

import java.util.List;

public interface MaxUserBO {

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
