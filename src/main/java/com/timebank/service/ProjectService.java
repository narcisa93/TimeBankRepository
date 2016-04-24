package com.timebank.service;

import java.util.List;

import com.timebank.model.Project;
import com.timebank.model.Subscriber;
import com.timebank.model.User;

public interface ProjectService {
     Project getProject (int id);
	 void addProject (Project project);
	 void updateProject (Project project);
	 void addSubscribers(Subscriber subscriber, int idProject);
	 List<Project> getProjects();
	 List<Project> findProjectsByUserId(int userId);

}
