package com.timebank.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "subscribers")
public class Subscriber {

	@Id
	@Column(name = "id_subscriber")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idSubscriber;

	@ManyToMany(mappedBy = "subscribers")
	private List<Project> projects;

	@Column
	private int time;

	@ManyToOne
	private User user;

	public int getIdSubscriber() {
		return idSubscriber;
	}

	public void setIdSubscriber(int idSubscriber) {
		this.idSubscriber = idSubscriber;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
}
