package com.Maxifum.web;

import java.security.Principal;
import java.util.List;

import javax.management.MXBean;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.Maxifum.service.MaxUserService;
import com.Maxifum.service.ServiceTaskService;
import com.Maxifum.web.elements.EvaluatedServices;
import com.Maxifum.web.elements.EvaluationTask;
import com.Maxifum.web.elements.GeneralServices;
import com.Maxifum.web.elements.MaxUser;
import com.Maxifum.web.elements.PendingTask;
import com.Maxifum.web.elements.ServiceTask;
import com.Maxifum.web.elements.TodayServices;

@Controller
public class RequestDispatcher {

	@Autowired
	private ServiceTaskService serviceDAO;

	@Autowired
	private MaxUserService userDAO;

	@RequestMapping("/")
	private String indexResolv() {
		return "index";
	}

	@RequestMapping("loginAction")
	@ResponseBody
	private String userLogin(ModelMap model, @RequestParam("userLogin") String login,
			@RequestParam("userPassword") String password) {
		MaxUser user = userDAO.findByLogin(login, password);
		if (user != null)
			return "landing";

		return "views/index";
	}

	@RequestMapping("landing")
	private ModelAndView panelResolv(ModelMap model) {
		MaxUser user = userDAO.findUserById(0);
		List<ServiceTask> pendingsServices = serviceDAO.getAllUsersPendingServices(user);
		List<ServiceTask> newEvaluatedServices = serviceDAO.getUsersNewEvaluations(user);
		List<ServiceTask> todayServices = serviceDAO.getUsersTodayPendingServices(user);
		model.addAttribute("pendingServices", pendingsServices);
		model.addAttribute("pendingServicesSize", pendingsServices.size());
		model.addAttribute("newEvaluatedServices", newEvaluatedServices);
		model.addAttribute("newEvaluatedServicesSize", newEvaluatedServices.size());
		model.addAttribute("todayServices", todayServices);
		model.addAttribute("todayServicesSize", todayServices.size());
		return new ModelAndView("views/landing", model);
	}

	@RequestMapping("miCalendario")
	private ModelAndView miCalendario(ModelMap model, @RequestParam(name = "userId") int userId) {
		// GeneralServices gs = new GeneralServices();
		// gs.getPendingTasks(5);
		// model.addAttribute("serviceList", gs.getServicesList());
		return new ModelAndView("views/user/userCalendar", model);
	}

	@RequestMapping("misServicios")
	private ModelAndView misServicios(ModelMap model, @RequestParam(name = "userId") int userId) {
		// GeneralServices gs = new GeneralServices();
		// gs.getPendingTasks(5);
		// model.addAttribute("serviceList", gs.getServicesList());
		return new ModelAndView("views/user/userEvent", model);
	}

	@RequestMapping("misEvaluaciones")
	private ModelAndView misEvaluaciones(ModelMap model, @RequestParam(name = "userId") int userId) {
		// EvaluatedServices gs = new EvaluatedServices();
		// gs.getPendingTasks(5);
		// model.addAttribute("serviceList", gs.getServicesList());
		return new ModelAndView("views/user/userEval", model);
	}

	@RequestMapping("nuevoServicio")
	private ModelAndView nuevoServicio(ModelMap model, @RequestParam(name = "userId") int userId) {
		// ServiceTask service = new
		// ServiceTask(owner,day,month,year,hour,minute, client,
		// location,comments);
		return new ModelAndView("views/admin/newService", model);
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

	@RequestMapping("gestionUsuarios")
	private ModelAndView gestionUsuarios(ModelMap model) {
		model.addAttribute("userList", userDAO.getAllUsersUsers());
		return new ModelAndView("views/admin/userAdmin", model);
	}

	
	@RequestMapping("nuevoUsuario")
	private ModelAndView nuevoUsuario(ModelMap model) {
		model.addAttribute("newUser", new MaxUser());
		return new ModelAndView("views/admin/newUser", model);
	}

	@RequestMapping(value = "newUserAction", method = RequestMethod.POST)
	@ResponseBody
	private ModelAndView nuevoUsuario(@ModelAttribute MaxUser user) {
		userDAO.saveNewUser(user);
		System.out.println("USER CORRECTLY SAVED! :D");
		return new ModelAndView("views/user/userCalendar");
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