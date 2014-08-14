package com.vomtung.web;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vomtung.entities.Product;
import com.vomtung.service.ProductService;

@Controller
@RequestMapping(value = "/index")
public class IndexController {
	
	@Autowired(required = true)
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap mm) {
		List<Product>productList=productService.findAll();
		mm.addAttribute("products", productList);
		return "index";
	}
}
