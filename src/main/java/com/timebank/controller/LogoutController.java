package com.timebank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping ("/logout")
public class LogoutController {

	@Autowired 
	HttpSession session;
	
	
    @RequestMapping (method = RequestMethod.GET)
     public String logout(ModelMap modelMap ) {
        session.invalidate();
        return "index";
     }

}
