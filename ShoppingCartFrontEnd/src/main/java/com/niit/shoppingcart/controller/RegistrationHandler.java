package com.niit.shoppingcart.controller;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;


import com.niit.shoppingcart.model.User;

@Component
public class RegistrationHandler {

	public User initFlow(){
		return new User();
	}
	
	private static final String EMAIL_PATTERN =
			"^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		/*if(user.getId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}*/
		if(user.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if(user.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		if(user.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		
		/*if(user.getEmail().matches("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\\\.[A-Z]{2,6}$")){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email is not valid").build());
			status = "failure";
		}*/
		if(user.getMobile().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		if(!user.getMobile().matches("^\\d{10}$")){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("*Mobile no is not valid").build());
			status = "failure";
		}
		if(user.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}
}