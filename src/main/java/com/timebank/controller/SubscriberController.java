package com.timebank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timebank.model.Project;
import com.timebank.service.ProjectService;

@Controller
@RequestMapping("/subscriber")
public class SubscriberController {

	@Autowired
	ProjectService projectService;

	@RequestMapping(method = RequestMethod.GET)
	public String viewSubscribers(ModelMap modelMap, @RequestParam int id) {
		System.out.println("Intra in controllerulde subscriber");
		Project project = projectService.getProject(id);
		modelMap.addAttribute("subscribers", project.getSubscribers());
		return "result";
	}
}
