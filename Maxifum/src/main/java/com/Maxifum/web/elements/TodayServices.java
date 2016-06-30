package com.Maxifum.web.elements;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import lombok.Getter;

public class TodayServices {

	@Getter
	List<ServiceTask> todayservices;

	public TodayServices() {
		todayservices = new ArrayList<ServiceTask>();
	}

	public void getTodayServices(int userId) {
		for (int i = 0; i < 15; i++) {
			ServiceTask a = new ServiceTask();
			a.setServiceId(i);
			a.setServiceTittle("Nuevo Servicio");
			a.setServiceSubtittle("Servicio #" + i);
			a.setDueDateTime(2016, 7, i, 8, 30);
			addNewTodayTask(a);
		}
	}

	private void addNewTodayTask(ServiceTask a) {
		todayservices.add(a);
	}

}
