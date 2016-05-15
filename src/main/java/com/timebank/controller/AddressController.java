package com.timebank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timebank.model.Address;
import com.timebank.model.Project;
import com.timebank.model.User;
import com.timebank.service.AddressService;

@Controller
@RequestMapping("/address")
public class AddressController {

	@Autowired
	AddressService addressService;

	@Autowired
	HttpSession session;

	@RequestMapping(method = RequestMethod.GET)
	public String viewAddress(ModelMap modelMap) {
		modelMap.addAttribute("address", new Address());
		return "address";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String createAddress(@Valid Address address, BindingResult result, ModelMap modelMap) {

		addressService.addAddress(address);
		System.out.print(address.toString());
		User user = (User)session.getAttribute("user");
		System.out.println("adresses in session: "+user.getAddresses());
		List<Address>ad = user.getAddresses();
		ad.add(address);
		session.setAttribute("addresses", ad);
		return "profile";
	}

	
}
