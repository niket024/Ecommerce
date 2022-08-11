package com.niit.shoppingcart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.Util.Util;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;


@Controller
public class CategoryController {
	
	

	
	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private Category category;

	
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String listCategories(Model model) {
		model.addAttribute("category", category);
		model.addAttribute("isAdminClickedCategories", "true");
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "/Home1";
	}

	// For add and update category both
	@RequestMapping(value = "/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {

		Util util = new Util();
		String id=  util.replace(category.getId(), ",", "");
		category.setId(id);
		
		categoryDAO.saveOrUpdate(category);

		return "redirect:/categories";
		

	}

	@RequestMapping("category/remove/{id}")
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) throws Exception {

		try {
			categoryDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/categories";
	}

	@RequestMapping("category/edit/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		System.out.println("editCategory");
		category=categoryDAO.get(id);
		model.addAttribute("category", category);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "redirect:/categories";
	}
}
