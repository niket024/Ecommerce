package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.Util.Util;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private Supplier supplier;
	
	
	@Autowired(required=true)
	@Qualifier(value="supplierDAO")
	public void setSupplierDAO(SupplierDAO ps){
		this.supplierDAO = ps;
	}
	
	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String listSuppliers(Model model) {
		model.addAttribute("supplier",supplier);
		model.addAttribute("isAdminClickedSuppliers", "true");

		model.addAttribute("supplierList", this.supplierDAO.list());
		return "/Home1";
	}
	
	//For add and update supplier both
	@RequestMapping(value= "/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier){
		
		
		Util util = new Util();
		String id=  util.replace(supplier.getId(), ",", "");
		supplier.setId(id);
		
	
			supplierDAO.saveOrUpdate(supplier);
		
		return "redirect:/suppliers";
		
	}
	
	@RequestMapping("supplier/remove/{id}")
    public String removeSupplier(@PathVariable("id") String id,ModelMap model) throws Exception{
		
       try {
		supplierDAO.delete(id);
		model.addAttribute("message","Successfully Added");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/suppliers";
    }
 
    @RequestMapping("supplier/edit/{id}")
    public String editSupplier(@PathVariable("id") String id, Model model){
    	System.out.println("editSupplier");
    	supplier=supplierDAO.get(id);
    	
        model.addAttribute("supplier",supplier);
        model.addAttribute("supplierList", this.supplierDAO.list());
        return "redirect:/suppliers";
    }
	}
