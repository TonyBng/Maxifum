package com.Maxifum.web.elements;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name ="ServiceTask", schema="dbo", catalog="db_dev01")
public class ServiceTask {
	
	@Id
	@Getter
	@Setter
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int serviceId;
	
	@Getter
	@Setter
	@OneToOne
	private MaxUser serviceOwner;

//	@Getter
//	@Setter
//	private String serviceTittle;
//
//	@Getter
//	@Setter
//	private String serviceSubtittle;

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
	private boolean isOpen;

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