package com.timebank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timebank.dao.AddressDao;
import com.timebank.dao.TimeAccountDao;
import com.timebank.model.TimeAccount;

@Service
@Transactional
public class TimeAccountServiceImpl implements TimeAccountService{
	
	
	@Autowired
	private TimeAccountDao accountDao;
	

	@Override
	public void addTimeAccount(TimeAccount account) {
		accountDao.addTimeAccount(account);
		
	}

	@Override
	public void updateTimeAccount(int idUser, TimeAccount account) {
		accountDao.updateTimeAccount(idUser, account);
		
	}

	@Override
	public void deleteTimeAccount(int idUser) {
		accountDao.deleteTimeAccount(idUser);
		
	}

	@Override
	public TimeAccount getTimeAccount(int idUser) {
		return accountDao.getTimeAccount(idUser);
	}

}
