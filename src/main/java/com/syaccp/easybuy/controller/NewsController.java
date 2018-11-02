package com.syaccp.easybuy.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.syaccp.easybuy.entity.News;

@Controller
@RequestMapping("/news")
public class NewsController {
	
	public NewsController(){
		System.out.println("造出来了!");
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable(value="id") Integer ids){
		System.out.println("NewsController  delete>>>>>>>>>>>>>"+ ids);
		
		return "";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(News news){
		System.out.println("NewsController  save");
		
		return "";
	}
	
	@RequestMapping("/add")
	public String add(){
		System.out.println("NewsController  add");
		
		return "news_Add";
	}
}
