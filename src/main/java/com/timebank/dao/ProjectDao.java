package com.timebank.dao;

import java.util.List;

import com.timebank.model.Project;
import com.timebank.model.Subscriber;

public interface ProjectDao {

     Project getProject (int id);
	 void addProject (Project project);
	 void updateProject (Project project);
	 List<Project> getProjects();
	 List<Project> findProjectsByUserId(int userId);
	void addSubscribers(Subscriber subscriber, int id);
}
