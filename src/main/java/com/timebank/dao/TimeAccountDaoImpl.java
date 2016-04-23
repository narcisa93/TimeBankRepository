package com.timebank.dao;

import java.sql.Time;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.timebank.model.TimeAccount;
import com.timebank.model.User;

@Repository
public class TimeAccountDaoImpl implements TimeAccountDao{

		@Autowired 
		HttpSession session;
		
		@Autowired
	    private SessionFactory sessionFactory;

	    private Session getCurrentSession () {
	        return sessionFactory.getCurrentSession();
	    }
	
	@Override
	public void addTimeAccount(TimeAccount account) {
		User user = (User) session.getAttribute("user");
		account.setUser(user);
		getCurrentSession().save(account);
		
	}

	@Override
	public void updateTimeAccount(int idUser, TimeAccount account) {
		TimeAccount accountToUpdate = getTimeAccount(idUser);
		accountToUpdate.setAmountOfTime(account.getAmountOfTime());
		accountToUpdate.setIdLevel(account.getIdLevel());
		
		getCurrentSession().merge(accountToUpdate);
		
	}

	@Override
	public void deleteTimeAccount(int idUser) {
		 TimeAccount account =  getTimeAccount(idUser);
	        if(account!=null){
	        	getCurrentSession().delete(account);
	        }
		
	}

	@Override
	public TimeAccount getTimeAccount(int idUser) {
		TimeAccount account = (TimeAccount) getCurrentSession().get(TimeAccount.class, idUser);
        return account;
	}

}
