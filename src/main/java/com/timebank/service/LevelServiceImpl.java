package com.timebank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timebank.dao.LevelDao;
import com.timebank.dao.ProjectDao;
import com.timebank.model.Level;

@Service
@Transactional
public class LevelServiceImpl implements LevelService {
	
	@Autowired
	LevelDao levelDao;

	@Override
	public void addLevel(Level level) {
		levelDao.addLevel(level);
		
	}

	@Override
	public void updateLevel(int idAccount, Level level) {
		levelDao.updateLevel(idAccount, level);
		
	}

	@Override
	public void deleteLevel(int idAccount) {
		levelDao.deleteLevel(idAccount);
		
	}

	@Override
	public Level getLevel(int idAccount) {
	
		return levelDao.getLevel(idAccount);
	}

	@Override
	public List<Level> getLevels() {
		return levelDao.getLevels();
	}
	

}
