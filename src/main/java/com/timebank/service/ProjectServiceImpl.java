package com.timebank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timebank.dao.ProjectDao;
import com.timebank.model.Project;
import com.timebank.model.Subscriber;

@Service
@Transactional
public class ProjectServiceImpl implements ProjectService{

	@Autowired
	ProjectDao projectDao;
	
	@Override
	public void addProject(Project project) {
		projectDao.addProject(project);
	}

	@Override
	public void updateProject(Project project) {
		projectDao.updateProject(project);
	}

	@Override
	public List<Project> getProjects() {
		// TODO Auto-generated method stub
		return projectDao.getProjects();
	}

	@Override
	public List<Project> findProjectsByUserId(int userId) {
		// TODO Auto-generated method stub
		return projectDao.findProjectsByUserId(userId);
	}

	@Override
	public Project getProject(int id) {
		// TODO Auto-generated method stub
		return projectDao.getProject(id);
	}

	@Override
	public void addSubscribers(Subscriber subscriber, int idProject) {
		projectDao.addSubscribers(subscriber, idProject);		
	}
	
	

}
