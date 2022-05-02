package com.bhushan.ProjectManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bhushan.ProjectManagement.dao.ProductRepo;
import com.bhushan.ProjectManagement.entity.Product;

@Controller
public class ProductController {

	@Autowired
	ProductRepo prdRepo;

	@RequestMapping("/home")
	public String showIndex() 
	{
		return "index.jsp";
	}

	@RequestMapping("/addproduct")
	@ResponseBody
	public String addItem(Product p) {
		prdRepo.save(p);
		return "Product added";
	}

	@RequestMapping("/viewproduct")
	public ModelAndView viewProduct(int id)
	
	{
		List<Product> list = prdRepo.findAll();
		ModelAndView mv = new ModelAndView("display.jsp");
		mv.addObject("option", "view");
		for (Product i : list) {
			if (i.getId() == id) {
				mv.addObject("result", i);
				mv.addObject("flag", true);
				return mv;
			}
		}
		mv.addObject("flag", false);
		return mv;
	}

	@RequestMapping("/viewallproduct")
	public ModelAndView viewAllItem() {
		List<Product> list = prdRepo.findAll();
		ModelAndView mv = new ModelAndView("display.jsp");
		mv.addObject("option", "viewall");
		mv.addObject("productlist", list);
		return mv;
	}

	@RequestMapping("/updateproduct")
	@ResponseBody
	public String updateproduct(Product p1)
	{
		boolean f = false;
		for(Product p:prdRepo.findAll())
		{
			if(p.getId()==p1.getId())
			{
				/*
				 * p.setName(p1.getName()); p.setPrice(p1.getPrice());
				 * p.setQuantity(p1.getQuantity()); f = true;
				 */
				prdRepo.delete(p);
			}
		}
		
			prdRepo.save(p1);
		return "Product Updated";
	}
	@RequestMapping("/purchasedproduct")
	@ResponseBody
	public String purchasedproduct(int  id,int quantity)
	{
		System.out.println(id+" "+quantity);
		boolean f = false;
		Product prd = new Product();
		for(Product p:prdRepo.findAll())
		{
			if(p.getId()==id)
			{
				prd.setId(p.getId());
				prd.setName(p.getName());
				prd.setPrice(p.getPrice());
				prd.setQuantity(p.getQuantity() + quantity);
				prdRepo.delete(p);
				prdRepo.save(prd);
				f = true;
			}
		}
		if(f)
		{
			return "Product Purchased";
		}
		else {
			return "Stock available";
		}
	}

	
	@RequestMapping("/deliveredproduct")
	@ResponseBody
	public String deliveredproduct(int  id,int quantity)
	{
		System.out.println(id+" "+quantity);
		boolean f = false;
		Product prd = new Product();
		for(Product p:prdRepo.findAll())
		{
			if(p.getId()==id && p.getQuantity()>=quantity)
			{
				prd.setId(p.getId());
				prd.setName(p.getName());
				prd.setPrice(p.getPrice());
				prd.setQuantity(p.getQuantity() - quantity);
				prdRepo.delete(p);
				prdRepo.save(prd);
				f = true;
			}
		}
		if(f)
		{
			return "Product Delivered";
		}
		
		else
		{
			return "stock Unavailable";
		}

	}
      
   

	
}

