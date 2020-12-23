package com.lyx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lyx.bean.User;
import com.lyx.dao.LyxUserDao;
import com.lyx.utils.MD5Utils;
import com.lyx.utils.UUIDUtils;

@Service
public class LyxUserService {
	
	@Autowired
	private LyxUserDao uDao;

	public User login(String username, String password) {
		return uDao.login(username,MD5Utils.md5(password));
	}

	public int addUser(User user) {
		user.setUserid(UUIDUtils.getId());
		user.setPassword(MD5Utils.md5(user.getUsername()));
		return uDao.addUser(user);
	}

	public List<User> findUser(String empname, String department) {
		return uDao.findUser(empname,department);
	}

	public User findUserById(String userid) {
		return uDao.findUserById(userid);
	}

	public int modifyUser(User user) {
		return uDao.modifyUser(user);
	}

	public int delUser(String userid) {
		return uDao.delUser(userid);
	}


}
