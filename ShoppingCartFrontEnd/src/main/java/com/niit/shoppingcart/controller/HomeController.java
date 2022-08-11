package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.User;



@Controller
public class HomeController {
	
	@Autowired
	Category category;

	@Autowired
	User user;
		
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	UserDAO userDAO;

	@RequestMapping(value = {"/", "/Home"})
	public ModelAndView home(){
		ModelAndView mv =new ModelAndView("/Home");
		
		return mv;
	}
	
	
	@RequestMapping(value = "/adminhome")
	public ModelAndView adminhome(){
		ModelAndView mv =new ModelAndView("/AdminHome");
		
		return mv;
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv  = new ModelAndView("/Login");
		mv.addObject( "message","Success!You are successfully registered please login with your details");
		
		return mv;}
		
	@RequestMapping("/registerHere")
	public ModelAndView registerHere(){
		ModelAndView mv =new ModelAndView("/Register");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
     	mv.addObject("message", "You are successfully registered");
		return mv;
	}
	
	@RequestMapping("/loginHere")
	public ModelAndView loginHere(){
		ModelAndView mv =new ModelAndView("/Login");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
//		mv.addObject("message", "You are successfully logged in");
		return mv;
	}
	
	@RequestMapping("/loginHeres")
	public ModelAndView loginHeres(){
		ModelAndView mv =new ModelAndView("/Login");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
        mv.addObject("addcart", "ouch..!!Before adding to cart you must login..!!");
		return mv;
	}
	@RequestMapping("/aboutus")
	public ModelAndView aboutUs(){
		ModelAndView mv =new ModelAndView("/aboutus");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
}
