package com.example.demo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.bean.Goods;
import com.example.demo.mapper.GoodsMapperDao;

@Service
public class GoodsServiceImpl implements GoodsService{

	@Resource
	private GoodsMapperDao goodsMapperDao;

	@Override
	public List<Goods> getGoodsList() {
		return goodsMapperDao.getGoodsList();
	}
	
}
