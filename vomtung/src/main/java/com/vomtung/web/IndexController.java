package com.vomtung.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vomtung.entities.Category;
import com.vomtung.entities.Product;
import com.vomtung.service.CategoryService;
import com.vomtung.service.ProductService;

@Controller
@RequestMapping(value = "/index")
public class IndexController {
	
	@Autowired(required = true)
	private ProductService productService;
	
	@Autowired(required = true)
	private CategoryService categoryService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap mm) {
		
		if(mm.get("categories")==null){
		List<Category>categories=this.categoryService.findAll();
    	mm.addAttribute("categories", categories);
		}
		
		List<Product>promotionProducts=productService.findPromotionProduct();
		mm.addAttribute("promotionProducts", promotionProducts);
		
		List<Product>featureProducts=productService.findFeaturedProduct();
		mm.addAttribute("featureProducts", featureProducts);
		
		List<Product>productList=productService.findNewProduct();
		mm.addAttribute("newProducts", productList);
		
		return "index";
	}
}
