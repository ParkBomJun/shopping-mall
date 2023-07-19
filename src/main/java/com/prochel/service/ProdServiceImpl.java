package com.prochel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prochel.mapper.ProdMapper;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProdServiceImpl implements ProdService {
	
	@Autowired
	private ProdMapper prodMapper;

	/* 상품 검색 */
	@Override
	public List<ProdVO> getGoodsList(Criteria cri) {
		
		log.info("getGoodsList().......");
		
		String type = cri.getType();
		String[] typeArr = type.split("");
		String[] authorArr = prodMapper.getAuthorIdList(cri.getKeyword());
		
		
		if(type.equals("A") || type.equals("AC") || type.equals("AT") || type.equals("ACT")) {
			if(authorArr.length == 0) {
				return new ArrayList();
			}
		}
		
		for(String t : typeArr) {
			if(t.equals("A")) {
				cri.setAuthorArr(authorArr);
			}
		}
		
		return prodMapper.getGoodsList(cri);
	}

	/* 사품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		
		log.info("goodsGetTotal().......");
		
		return prodMapper.goodsGetTotal(cri);
		
	}

}
