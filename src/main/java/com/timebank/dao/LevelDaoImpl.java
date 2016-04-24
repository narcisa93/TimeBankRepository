package com.timebank.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timebank.model.Level;
import com.timebank.model.Project;
import com.timebank.model.TimeAccount;
import com.timebank.model.User;

@Repository
public class LevelDaoImpl implements LevelDao {

	 @Autowired
	  private SessionFactory sessionFactory;
	  
	  @Autowired
	  private HttpSession session;

	
	  private Session getCurrentSession () {
	        return sessionFactory.getCurrentSession();
	    }
	
	
	@Override
	public void addLevel(Level level) {
		//User currentUser = (User)session.getAttribute("user");
		//check here
		TimeAccount currentAccount =(TimeAccount)session.getAttribute("account");
		currentAccount.setLevel(level);
		getCurrentSession ().save(level);	
		
	}

	@Override
	public void updateLevel(int idUser, Level level) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteLevel(int idUser) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Level getLevel(int idUser) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Level> getLevels() {
		return getCurrentSession().createQuery("select p from " + Level.class.getName() +" p").list();

	}
	
}
