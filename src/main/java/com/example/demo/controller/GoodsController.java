package com.example.demo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.redis.core.BoundGeoOperations;
import org.springframework.data.redis.core.BoundListOperations;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bean.Goods;
import com.example.demo.service.GoodsService;

@Controller
public class GoodsController {

	@Resource
	private GoodsService goodsService;
	
	@Resource
	private RedisTemplate<String, Object> redisTemplate;
	
	@RequestMapping("list")
	public String list(Model model ) {
		/*List<Goods> goodsList = goodsService.getGoodsList();*/
		//Redistemplate操作list第二种方式
		BoundListOperations<String, Object> boundListOps = redisTemplate.boundListOps("goodsList");
		List<Object> range = boundListOps.range(0, -1);
		model.addAttribute("goodsList", range);
		return "list";
	}
	
	@RequestMapping("toAdd")
	public String toAdd() {
		
		return "add";
	}
	
	@RequestMapping("addGoods")
	public String addGoods(Goods goods) {
		//Redistemplate操作list第一种方式
		ListOperations<String, Object> opsForList = redisTemplate.opsForList();
		Long push = opsForList.leftPush("goodsList", goods);
		System.out.println(push);
		return "redirect:list";
	}
}
