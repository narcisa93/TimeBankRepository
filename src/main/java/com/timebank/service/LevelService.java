package com.timebank.service;

import java.util.List;

import com.timebank.model.Address;
import com.timebank.model.Level;
import com.timebank.model.Project;

public interface LevelService {
	void addLevel(Level level);
	void updateLevel(int idAccount, Level level);
	void deleteLevel(int idAccount);
	Level getLevel(int idAccount);
	List<Level> getLevels();

}
