package com.lyx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lyx.bean.User;

public interface LyxUserDao {

	public User login(@Param("username")String username, @Param("password")String password);

	public int addUser(User user);

	public List<User> findUser(@Param("empname")String empname, @Param("department")String department);

	public User findUserById(@Param("userid")String userid);

	public int modifyUser(User user);

	public int delUser(String userid);

}
