package com.Maxifum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Maxifum.dao.MaxUserDAO;
import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.MaxUser;

import lombok.Setter;

@Service
public class MaxUserServiceImpl implements MaxUserService {
	@Autowired
	MaxUserDAO userDAO;

	@Override
	@Transactional
	public MaxUser findUserById(int id) {
		return userDAO.findUserById(id);
	}

	@Override
	@Transactional
	public List<MaxUser> getAllUsersUsers() {
		return userDAO.getAllUsersUsers();
	}

	@Override
	@Transactional
	public void updateUser(MaxUser user) {
		userDAO.updateUser(user);
	}

	@Override
	@Transactional
	public void saveNewUser(MaxUser user) {
		userDAO.saveNewUser(user);
	}

	@Override
	@Transactional
	public void deleteUser(MaxUser user) {
		userDAO.deleteUser(user);
	}

	@Override
	@Transactional
	public MaxUser findByLogin(String userName, String password) {
		return userDAO.findByLogin(userName, password);
	}

}
