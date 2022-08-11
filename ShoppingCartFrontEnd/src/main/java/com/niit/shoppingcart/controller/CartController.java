package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;

@Controller
public class CartController {

	@Autowired(required = true)
	private CartDAO cartDAO;

	@Autowired(required = true)
	private ProductDAO productDAO;

	@Autowired(required = true)
	private CategoryDAO categoryDAO;

	@Autowired(required = true)
	private UserDAO userDAO;

	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());

		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		model.addAttribute("totalAmount", cartDAO.getTotalAmount("user")); // Just
																			// to
																			// test,
																			// passwrdo
																			// user
		model.addAttribute("displayCart", "true");
		return "/cart";
	}

	@RequestMapping(value = "/carts", method = RequestMethod.GET)
	public String listCarts(Model model) {
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.list());
		return "/cart";
	}

	@RequestMapping(value = "/cart/add/{id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("id") String id, HttpSession session) {
		Product product = productDAO.get(id);
		/*List<Cart> cartList = cartDAO.list();
		boolean flag=true;
		Product product = productDAO.get(id);
		for(Cart cart:cartList){
			if(product.getName().equals(cart.getProductName())){
				flag=false;
			}
		}
		if(flag){*/
			Cart cart = new Cart();
			cart.setPrice(product.getPrice());
			cart.setProductName(product.getName());
			cart.setQuantity(1);
			// String
			// loggedInUser_ID=(String)session.getAttribute("loggedInUser_ID");
			cart.setUser(userDAO.get((String) session.getAttribute("username"))); // id
																					// should
																					// keep
																					// session
																					// and
																					// use
																					// the
																					// same
																					// id
			cart.setStatus('N'); //
	
			cartDAO.saveOrUpdate(cart);
		//}
		// return "redirect:/views/home.jsp";
		return "redirect:/myCart";

	}

	@RequestMapping("cart/remove/{id}")
	public String removeCart(@PathVariable("id") int id, ModelMap model) throws Exception {

		try {
			cartDAO.delete(id);
			model.addAttribute("message", "Successfully removed");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "redirect:/myCart";
	}

	@RequestMapping("cart/edit/{id}")
	public String editCart(@PathVariable("id") String id, Model model) {
		System.out.println("editCart");
		model.addAttribute("cart", this.cartDAO.get(id));
		model.addAttribute("listCarts", this.cartDAO.list());
		return "cart";
	}
}
