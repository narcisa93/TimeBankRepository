package com.timebank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timebank.dao.SubscriberDao;
import com.timebank.model.Subscriber;

@Service
@Transactional
public class SubscriberServiceImpl implements SubscriberService {

	@Autowired
	SubscriberDao subscriberDao;
	
	
	@Override
	public void addSubscriber(Subscriber subscriber) {
		subscriberDao.addSubscriber(subscriber);
	}

}
