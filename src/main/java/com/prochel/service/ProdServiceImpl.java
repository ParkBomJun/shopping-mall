package com.prochel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prochel.mapper.AttachMapper;
import com.prochel.mapper.ProdMapper;
import com.prochel.model.AttachImageVO;
import com.prochel.model.CateVO;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProdServiceImpl implements ProdService {
	
	@Autowired
	private ProdMapper prodMapper;
	
	@Autowired
	private AttachMapper attachMapper;

	/* 상품 검색 */
	@Override
	public List<ProdVO> getGoodsList(Criteria cri) {
		
		String type = cri.getType();
		String[] typeArr = type.split("");
		String[] authorArr = prodMapper.getAuthorIdList(cri.getKeyword());
		
		
		if(type.equals("A") || type.equals("AC") || type.equals("AT") || type.equals("ACT")) {
			if(authorArr.length == 0) {
				return new ArrayList();
			}
		}
		
		for(String T : typeArr) {
			if(T.equals("A")) {
				cri.setAuthorArr(authorArr);
			}
		}
		
		List<ProdVO> list = prodMapper.getGoodsList(cri);
		
		list.forEach(prod -> {
			
			int prodId = prod.getProdId();
			
			List<AttachImageVO> imageList = attachMapper.getAttachList(prodId);
			
			prod.setImageList(imageList);
			
		});
		
		return list;
	}
	
	/* 국내 카테고리 리스트 */
	@Override
	public List<CateVO> getCateCode1() {

		return prodMapper.getCateCode1();
	}

	/* 외국 카테고리 리스트 */
	@Override
	public List<CateVO> getCateCode2() {

		return prodMapper.getCateCode2();
	}		


	/* 상품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		
		return prodMapper.goodsGetTotal(cri);
		
	}

}
