package com.Maxifum.web.elements;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@AllArgsConstructor
@NoArgsConstructor
public class MaxUser {
	@Id
	@Getter
	@Setter
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;

	@Getter
	@Setter
	private String userLogin;

	@Getter
	@Setter
	private String userPassword;

	@Getter
	@Setter
	private String userPassword2;

	@Getter
	@Setter
	private String userFirstName;

	@Getter
	@Setter
	private String userLastName;

	@Getter
	@Setter
	private String phoneNumber;
	
	@Getter
	@Setter
	private boolean administrator;

}
