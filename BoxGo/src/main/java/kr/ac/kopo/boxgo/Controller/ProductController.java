package kr.ac.kopo.boxgo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.boxgo.Model.Keywords;
import kr.ac.kopo.boxgo.Model.Product;
import kr.ac.kopo.boxgo.Service.KeywordsService;
import kr.ac.kopo.boxgo.Service.ProductService;
import kr.ac.kopo.boxgo.pager.Pager;

@Controller
@RequestMapping("/product")
public class ProductController {
	final String path="product/";
	@Autowired
	ProductService service;
	
	@Autowired
	KeywordsService keywordsService;
	
	@GetMapping("/list")
	public String list(Model model,Pager pager) {
		List<Product> list =service.list(pager);
		model.addAttribute("list", list);
		return path+"list";
	}
	
	@GetMapping("/add")
	public String add( Model model) {
		/*List<Keywords> categoryList=keywordsService.list(2);
		model.addAttribute("categorys", categoryList);
		List<Keywords> brandList=keywordsService.list(3);
		model.addAttribute("brand", brandList);
		List<Keywords> sizeList=keywordsService.list(4);
		model.addAttribute("size", sizeList);
		List<Keywords> colorList=keywordsService.list(5);
		model.addAttribute("color", colorList);*/
		List<Keywords> list=keywordsService.list(0);
		model.addAttribute("list", list);
		return path+"add";
	}
	@PostMapping("/add")
	public String add(Product item) {
		service.add(item);
		return "redirect:list";
	}
	@GetMapping("delete/{id}")
	public String delete(@PathVariable int id) {
		service.delete(id);
		return path+"delete";
	}
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model) {
		Product item=service.item(id);
		model.addAttribute("item",item);
		return path+"update";
	}
	@PostMapping("/update/{id}")
	public String update(@PathVariable int id, Product item) {
		service.update(item);
		return "redirect:../list";
	}
}
