package com.vomtung.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vomtung.entities.Product;
import com.vomtung.service.ProductService;


@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	@Autowired(required = true)
	private ProductService productService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap mm) {
		mm.addAttribute("product", new Product());
		return "add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute(value = "product") Product product) {
		productService.create(product);
		return "redirect:/index.html";
	}
	
	@RequestMapping(value = "/delete/{productId}", method = RequestMethod.GET)
	public String delete(@PathVariable(value = "productId") long id) {
		productService.delete(productService.findById(id));
		return "redirect:/index.html";
	}
	
	@RequestMapping(value = "/edit/{productId}", method = RequestMethod.GET)
	public String edit(@PathVariable(value = "productId") long productId,ModelMap mm) {
		mm.addAttribute("product", productService.findById(productId));
		return "edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute(value = "product") Product product) {
		productService.edit(product);
		return "redirect:/index.html";
	}
}
