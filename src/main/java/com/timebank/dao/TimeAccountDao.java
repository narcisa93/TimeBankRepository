package com.timebank.dao;

import com.timebank.model.TimeAccount;

public interface TimeAccountDao {

	void addTimeAccount(TimeAccount account);
	void updateTimeAccount(int idUser, TimeAccount account);
	void deleteTimeAccount(int idUser);
	TimeAccount getTimeAccount(int idUser);
}
