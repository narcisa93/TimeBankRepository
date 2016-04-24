package com.timebank.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timebank.model.Project;
import com.timebank.model.User;
import com.timebank.model.UserLoginHistory;
import com.timebank.service.ProjectService;
import com.timebank.service.UserService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping ("/")
public class LoginController {
	@Autowired 
	HttpSession session;
    @Autowired
    UserService userService;
    @Autowired
    private ProjectService projectService;

    @RequestMapping (method = RequestMethod.GET)
    public String viewLogin (ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        return "index";
    }

    @RequestMapping (method = RequestMethod.POST)
    public String varifyLogin (@RequestParam String email, @RequestParam String password, ModelMap modelMap) {
        List<User> users = userService.getUsers();
        for(User user : users) {
            if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
                DateFormat dateFormat = new SimpleDateFormat();
                Date date = new Date();
                UserLoginHistory userLoginHistory = new UserLoginHistory();
                userLoginHistory.setLoginTime(dateFormat.format(date));
                user.getHistory().add(userLoginHistory);
                userService.updateUser(user);
                System.out.println(user.getProfilePicture());
                modelMap.addAttribute("user",user);
                session.setAttribute("user", user);
                modelMap.addAttribute("resultMessage", "Congratulations " + user.getFullName() + "! You are Successfully Logged in.");
                List<Project> userProjects = projectService.findProjectsByUserId(user.getId());
                System.out.println(userProjects.toString());
                System.out.println("see addresses"+user.getAddresses());
                modelMap.addAttribute("userProjects", userProjects);
                return "profile";
            }
        }
      
        modelMap.addAttribute("resultMessage", "Incorrect Username or Password! Please try again.");
        return "profile";
    }

}
