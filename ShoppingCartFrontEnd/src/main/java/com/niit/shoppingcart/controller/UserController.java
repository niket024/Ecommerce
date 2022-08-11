package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.User;




@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
	
	@Autowired(required=true)
	   private ProductDAO productDAO;
	@Autowired(required=true)
	private CartDAO cartDAO;

	

	/*	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
*/
	
	
		
	
	
	
	/*@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "id") String id,
			 @RequestParam(value = "password") String password,
			HttpSession session) {
		
		ModelAndView mv = new ModelAndView("/userhome");
		mv.addObject("product", new Product());
		mv.addObject("productList", this.productDAO.list());
		
		boolean isValidUser = userDAO.isValidUser(id, password);
		
		if (isValidUser == true) {
			System.out.println("Logged In");
			user = userDAO.get(id);
			loggedInUser_ID=user.getId();
			session.setAttribute("loggedInUser_ID", loggedInUser_ID);
			session.setAttribute("loggedInUser", user.getName());
			if (user.getAdmin() == 1) {
				System.out.println("Admin");
				mv.addObject("isAdmin", "true");
			} else {
				System.out.println("User");
				mv.addObject("isAdmin", "false");
			}
		} else {
			System.out.println("Invalid Credentials");
			
			mv = new ModelAndView("/Login");
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid username or password, please enter the valid details!!!");
		}
		
		return mv;
	}
	*/
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		
		List<Cart> cartItems = (List<Cart>)this.cartDAO.list();

        for (Cart item : cartItems){
        	int id=item.getId();
            cartDAO.delete(id);
        }

		
		ModelAndView mv = new ModelAndView("/Home");
		session.invalidate();
		session = request.getSession(true);
//		session.setAttribute("category", category);
//		session.setAttribute("categoryList", categoryDAO.list());
		
		mv.addObject("logoutMessage", "You are successfully logged out");
		mv.addObject("loggedOut", "true");
		
		return mv;
	}

	@RequestMapping("/productlist1")
	public ModelAndView user1(HttpServletRequest req,HttpServletResponse res) {
		org.springframework.security.core.userdetails.User user = (org.springframework.security.core.userdetails.User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	    String name = user.getUsername();
		req.getSession().setAttribute("username", name);
		ModelAndView mv = new ModelAndView("/productlist");
		mv.addObject("product", new Product());
		mv.addObject("productList", this.productDAO.list());
		return mv;
	}
	
	
	
	@RequestMapping("/userhome")
	public ModelAndView userhome() {
		ModelAndView mv = new ModelAndView("/Home2");
		mv.addObject("product", new Product());
		mv.addObject("productList", this.productDAO.list());
		return mv;
	}


	@RequestMapping("/admin1")
	public ModelAndView admin1() {
		ModelAndView mv = new ModelAndView("/AdminHome");
		
		return mv;
	}
	

}

