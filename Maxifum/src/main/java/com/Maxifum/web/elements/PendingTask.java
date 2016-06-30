package com.Maxifum.web.elements;

import java.util.ArrayList;
import java.util.List;

import lombok.Getter;

public class PendingTask {

	@Getter
	List<ServiceTask> newPendigTasks;

	public PendingTask() {
		newPendigTasks = new ArrayList<ServiceTask>();
	}

	public void getPendingTasks(int userId) {
		// TODO Code function to get pending Task from the DataBase.

		// Dev test dummy task
		for (int i = 0; i < 5; i++) {
			ServiceTask a = new ServiceTask();
			a.setServiceTittle("Nuevo Servicio");
			a.setServiceSubtittle("Servicio #" + i);
			addNewPendingTask(a);
		}
	}

	public void addNewPendingTask(ServiceTask task) {
		newPendigTasks.add(task);
	}



}
