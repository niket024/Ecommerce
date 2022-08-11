package com.niit.shoppingcart.Util;

public class Util {
	
	
	/**
	 * This method is used to remove cammaa from
	 * product, category, suppliers which are 
	 * appending unnecessarily while creating it.
	 * 
	 * @param st
	 * @param ch1
	 * @param ch2
	 * @return
	 */
	public String replace(String st, String ch1, String ch2)
	{
		
	  return	st.replace(ch1, ch2);
		
	}
	
	
	public static void main(String[] args) {
		Util u = new Util();
		
		String newString =   u.replace(",PRD", ",", "");
		System.out.println(newString);
	}
	

}
