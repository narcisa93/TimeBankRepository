package com.timebank.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timebank.model.Project;
import com.timebank.model.Subscriber;
import com.timebank.model.User;
import com.timebank.service.ProjectService;
import com.timebank.service.SubscriberService;

@Controller
@RequestMapping("/newsFeed")
public class NewsFeedController {

	@Autowired
	ProjectService projectService;
	@Autowired
	SubscriberService subscriberService;
	@Autowired
	HttpSession session;

	@RequestMapping(method = RequestMethod.GET)
	public String displayPosts(ModelMap modelMap) {
		modelMap.addAttribute("projects", projectService.getProjects());
		return "newsFeed";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String apply(@RequestParam int id, ModelMap modelMap) {
		System.out.println(id);
		Project project = projectService.getProject(id);
		User loggedUser = (User) session.getAttribute("user");
		Subscriber subscriber = new Subscriber();
		subscriber.setUser(loggedUser);
		List<Subscriber> subscribers = new ArrayList<Subscriber>();
		subscribers.add(subscriber);
		for (Subscriber s : subscribers) {
			projectService.addSubscribers(s, project.getIdProject());
		}

		modelMap.addAttribute("projects", projectService.getProjects());
		modelMap.addAttribute("successMessage", "Applied successfully!");
		return "newsFeed";
	}

}
