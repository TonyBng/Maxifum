package com.Maxifum.web;

import java.security.Principal;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// @PropertySource(value = { "classpath:application.properties" })
public class RequestDispatcher {

	// @Autowired
	// public Environment environment;

	// Database Connection
	//
	// @Autowired
	// @Qualifier(value = "SQLServer")
	// private SessionFactory SQLServer;
	//
	// @Autowired
	// @Qualifier(value = "Postgres")
	// private SessionFactory PostgresSQL;
	//
	// @Autowired
	// @Qualifier(value = "LocalSQLServer")
	// private SessionFactory LocalSQLServer;

	// TODO remove this suppresswarning
	// @SuppressWarnings("unused")
	// private SessionFactory getApplicationDB() {
	// switch ("") {
	// case "dev":
	// return LocalSQLServer;
	// case "production":
	// return SQLServer;
	// default:
	// return null;
	// }
	// }

	// ************************************************************************************************************

	@RequestMapping("/")
	private String indexResolv(ModelMap model, Principal principal) {
		model.addAttribute("user_name", principal.getName());
		return "index";
	}

	@RequestMapping("loginAction")
	private String userLogin() {
		return "views/landing";
	}

	@RequestMapping("landing")
	private String panelResolv() {
		return "views/landing";
	}

	@RequestMapping("userCalendar")
	private String userCalendar() {
		return "views/user/userCalendar";
	}

	@RequestMapping("misServicios")
	private String misServicios() {
		return "views/user/userCalendar";
	}

	@RequestMapping("clientes")
	private String administrarClientes() {
		return "views/user/userCalendar";
	}

	@RequestMapping("misReportes")
	private String misReportes() {
		return "views/user/userCalendar";
	}

	@RequestMapping("reportesGenerales")
	private String reportesGenerales() {
		return "views/user/userCalendar";
	}

	@RequestMapping("userServices")
	private String userServices() {
		return "views/user/userServices";
	}

	// @RequestMapping(value = "/login")
	// public String loginResolv(ModelMap model) {
	// model.addAttribute("userCredential", new SWL_User());
	// return "login";
	// }
	//
	// @JsonView(IndexSelectProyect.class)
	// @RequestMapping("/projectLanding")
	// @ResponseBody
	// public IndexSelectProyect test(ModelMap model, @RequestBody
	// IndexSelectProyect selectedProject) {
	// selectedProject.setResponse("success");
	// return selectedProject;
	// }
	//
	// @RequestMapping(value = "/monitor", method = RequestMethod.GET)
	// public String monitorResolv(ModelMap model, @RequestParam("project")
	// String project,
	// @RequestParam("station") String station) {
	// model.addAttribute("currentProject", project);
	// model.addAttribute("currentStation", station);
	// return "/monitor/normalGraph";
	// }
	//
	// @RequestMapping(value = "/drawScatterChart", method = RequestMethod.POST)
	// @ResponseBody
	// public ScatterChart dragScatterGraph(ModelMap model,
	// @RequestParam("project") String project,
	// @RequestParam("station") String station, @RequestBody ScatterChart chart)
	// {
	// model.addAttribute("currentProject", project);
	// model.addAttribute("currentStation", station);
	// chart = new ScatterChart();
	// chart.setATittle("a");
	// chart.setBTittle("b");
	// chart.setMainTittle("TEst 1");
	// chart.setXTittle("Tiempo");
	// chart.setYTittle("voltaje");
	// chart.getValues().add(new ChartValues("5", "1"));
	// chart.getValues().add(new ChartValues("7", "7"));
	// chart.getValues().add(new ChartValues("9", "4"));
	// chart.getValues().add(new ChartValues("5", "7"));
	// chart.getValues().add(new ChartValues("9", "7"));
	// chart.getValues().add(new ChartValues("11", "9"));
	// chart.getValues().add(new ChartValues("15", "9"));
	// chart.getValues().add(new ChartValues("14", "7"));
	// return chart;
	//
	// }

}