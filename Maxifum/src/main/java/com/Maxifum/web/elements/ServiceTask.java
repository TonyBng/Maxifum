package com.Maxifum.web.elements;

import lombok.Getter;
import lombok.Setter;

public class ServiceTask {

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

}