package com.timebank.service;

import com.timebank.model.Address;
import com.timebank.model.TimeAccount;

public interface TimeAccountService {

	void addTimeAccount(TimeAccount account);
	void updateTimeAccount(int idUser, TimeAccount account);
	void deleteTimeAccount(int idUser);
	TimeAccount getTimeAccount(int idUser);
}
