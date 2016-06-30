package com.Maxifum.web.elements;

import java.util.Calendar;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

public class ServiceTask {
	@Getter
	@Setter
	private int serviceId;

	@Getter
	@Setter
	private String serviceTittle;

	@Getter
	@Setter
	private String serviceSubtittle;

	@Getter
	@Setter
	private int evaluation;

	@Getter
	@Setter
	private boolean newTask;

	@Getter
	@Setter
	private boolean newEvaluation;

	@Getter
	@Setter
	private boolean open;

	@Getter
	@Setter
	private int day;

	@Getter
	@Setter
	private int month;
	@Getter
	@Setter
	private int year;

	@Getter
	@Setter
	private int hour;

	@Getter
	@Setter
	private int minute;

	@Getter
	@Setter
	private Date dueDate;

	@Getter
	@Setter
	private Date completeDate;
	
	@Getter
	@Setter
	private String clientComment;
	
//	@Getter
//	@Setter
//	private Client client;

	public void setDueDateTime(int year, int month, int day, int hour, int minute) {
		this.year = year;
		this.month = month-1;
		this.day = day;
		this.hour = hour;
		this.minute = minute;
		dueDate = getDueTime();
	}

	public Date getDueTime() {
		Calendar cal = Calendar.getInstance();
		cal.set(year, month, day, hour, minute, 0);
		return cal.getTime();
	}

}