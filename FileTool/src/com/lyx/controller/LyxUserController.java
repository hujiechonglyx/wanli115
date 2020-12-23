package com.lyx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyx.bean.User;
import com.lyx.service.LyxUserService;

@Controller
@SessionAttributes("login")
public class LyxUserController {

	@Autowired
	private LyxUserService uService;

	@RequestMapping("/tologin")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("/login")
	public String login(@RequestParam(value = "username") String username,
			@RequestParam("password") String password, Model model) {

		User user = uService.login(username, password);
		if (user == null) {
			model.addAttribute("msg", "用户名密码错误");
			return "message";
		}

		model.addAttribute("login", user);
		return "manager/welcome";
	}

	@RequestMapping("/exit")
	public String Exit(HttpServletRequest request) {
		request.getSession().invalidate();
		return "login";
	}

	@RequestMapping("/toAddUser")
	public String toAddUser() {
		return "manager/addUser";
	}

	@RequestMapping("/addUser")
	public String addUser(User user,Model model) {

		int i = uService.addUser(user);
		
		if(i==0){
			model.addAttribute("msg", "用户添加失败");
		}

		return "manager/addUser";
	}

	@RequestMapping("/findUser")
	public String findUser(
			@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			User user, Model model) {
		PageHelper.startPage(pn, 15);
		List<User> users = uService.findUser(user.getEmpname(),user.getDepartment());
		PageInfo<User> pageInfo = new PageInfo<>(users, 6);
		
		System.out.println("sss-----------"+users.toString());
		
		model.addAttribute("info", pageInfo);
		model.addAttribute("users", users);

		return "manager/userList";
	}
	
	@RequestMapping("/toModifyUser")
	public String toModifyUser(@RequestParam("userid")String userid,Model model){
		
		User user = uService.findUserById(userid);
		model.addAttribute("user", user);
		return "manager/modifyUser";
	}
	
	@RequestMapping("/modifyUser")
	public String modifyUser(User user){
		
		int i = uService.modifyUser(user);
		
		return "manager/modifyUser";
	}
	
	@RequestMapping("/delUser")
	public String delUser(@RequestParam("userid")String userid){
		
		int i = uService.delUser(userid);
		
		return "redirect:/findUser";
	}
}
