package com.vomtung.web;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vomtung.entities.Product;
import com.vomtung.service.ProductService;
import com.vomtung.util.Utils;


@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	@Autowired(required = true)
	private ProductService productService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap mm) {
		mm.addAttribute("product", new Product());
		return "product/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@Valid @ModelAttribute(value = "product") Product product,BindingResult result,@RequestParam("file") MultipartFile file,HttpServletRequest request) {
		
		if(result.hasErrors()) {
			return "product/add";
		}
		
		File serverFile;
		//image
		if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                
                // Creating the directory to store file
                File dir = new File(Utils.getFolderStoreImage(request.getSession().getServletContext().getRealPath("/")));
                if (!dir.exists())
                    dir.mkdirs();
                // Create the file on server
                serverFile = new File(Utils.getFolderStoreImage(request.getServletContext().getRealPath("/"))+System.currentTimeMillis()+"-"+UUID.randomUUID().toString()+".jpg");
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
            } catch (Exception e) {
                return "You failed to upload => " + e.getMessage();
            }
        } else {
            return "You failed to upload "+ " because the file was empty.";
        }
		
		product.setImageName(serverFile.getName());
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
