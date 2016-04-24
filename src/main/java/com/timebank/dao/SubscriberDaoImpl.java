package com.timebank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timebank.model.Subscriber;

@Repository
public class SubscriberDaoImpl implements SubscriberDao{
	@Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession () {
        return sessionFactory.getCurrentSession();
    }

	@Override
	public void addSubscriber(Subscriber subscriber) {

		getCurrentSession ().save(subscriber);	
	}

}
