package com.timebank.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timebank.model.Project;
import com.timebank.model.Subscriber;
import com.timebank.model.User;

@Repository
public class ProjectDaoImpl implements ProjectDao{
	@Autowired 
	HttpSession session;
	 @Autowired
	    private SessionFactory sessionFactory;

	    private Session getCurrentSession () {
	        return sessionFactory.getCurrentSession();
	    }

	@Override
	public void addProject(Project project) {
		User currentUser = (User)session.getAttribute("user");
		project.setUser(currentUser);
		getCurrentSession ().save(project);	
	}

	@Override
	public void updateProject(Project project) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Project> getProjects() {
		return getCurrentSession().createQuery("select p from " + Project.class.getName() +" p").list();
	}

	@Override
	public List<Project> findProjectsByUserId(int userId) {
		return getCurrentSession().createQuery("select p from " + Project.class.getName() +" p where p.user.id = " + userId).list();
	}

	@Override
	public Project getProject(int id) {
	    Project project = (Project) getCurrentSession().get(Project.class, id);
	    return project;
	}

	@Override
	public void addSubscribers(Subscriber subscriber, int idProject) {

		Project project =  (Project) getCurrentSession().get(Project.class, idProject);
		project.getSubscribers().add(subscriber);
		getCurrentSession ().merge(project);	

	}

}
