package com.niit.shoppingcart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.dao.UserOrderDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.UserOrder;

@Controller
public class OrderController {
	
	
	@Autowired(required = true)
	private UserOrderDAO userOrderDAO;
	
	@Autowired(required=true)
	private UserDAO userDAO;
	
	@Autowired(required=true)
	private CartDAO cartDAO;
	
	@Autowired(required=true)
	private ProductDAO productDAO;


	
@RequestMapping(value = "/order")
	
		public ModelAndView createOrder(@RequestParam("billingAddress") String billingAddress , @RequestParam("shippingAddress") String shippingAddress , @RequestParam("pay_type") String pay_type ,HttpSession session ) {
		
		UserOrder userOrder=new UserOrder();
		userOrder.setBillingAddress(billingAddress);
		userOrder.setShippingAddress(shippingAddress);
		userOrder.setPay_type(pay_type);
		 String loggedInUser_ID=(String)session.getAttribute("loggedInUser_ID");
		 userOrder.setUser(userDAO.get(loggedInUser_ID));
		userOrderDAO.saveOrUpdate(userOrder);
		ModelAndView mv  = new ModelAndView("/orderconformation");
		mv.addObject( "message","Your order is confirmed");
		mv.addObject("shippingAddress",userOrder.getShippingAddress());
		List<Cart> cartItems = (List<Cart>)this.cartDAO.list();;
         int sum=0;
        for (Cart item : cartItems){
        	int price=item.getPrice();
             sum=sum+price;
        }
        mv.addObject("Totalamount",sum);

		
		 return mv;

	}


@RequestMapping(value ="/proceed")
	


public ModelAndView proceed(){
	ModelAndView mv= new ModelAndView("/order");
	
	mv.addObject("proceedfailed","Ouch..!!You must choose product before proceeding");
	return mv;

	/*public String proceed(){
	
	return "/order";*/
	}


@RequestMapping("/productlist")
public ModelAndView returntoproductlist(){
	ModelAndView mv = new ModelAndView("/productlist");
	mv.addObject("product", new Product());
	mv.addObject("productList", this.productDAO.list());
	return mv;
}	

}
